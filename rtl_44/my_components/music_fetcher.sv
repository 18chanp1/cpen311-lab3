/*
Cyclically fetches music from flash memory and outputs it
Details on inputs below
*/
module music_fetcher 
#
(
    parameter ADDR_WIDTH = 23,                  /*Width of address to flash memory*/
    parameter DATA_WIDTH = 32,                  /*Width of data output*/
    parameter BYTEENABLE_WIDTH = 4,             /*Width of byteenable*/
    parameter AUDIO_DATA_WIDTH = 16,            /*Width of audio data*/
    parameter SONG_ADDR_MAX = 20'h7FFFF         /*Highest address of song*/
)
(
    /* Control Inputs */
    input logic                                 clk_27,                     /*Other clock at which song is sampled*/
    input logic                                 clk_50,                     /*Clock at which the module runs at*/    
    input logic                                 rst,                        /*Synchronized*/
    input logic                                 forward,                    /* Direction of music playback. 1 for forward, 0 for backward */
    input logic                                 paused,                     /* 1 is paused, 0 is playing*/
    input logic    [31:0]						sample_freq_div,            /*Sampling frequency divisor. How many times does sampling freq fit into clk_27*/
    /* Inputs from flash*/
    input  logic                                flash_mem_readdatavalid,
    input  logic                                flash_mem_waitrequest,
    input  logic    [DATA_WIDTH - 1:0]          flash_mem_readdata,
    /* Ouputs to flash */
      output logic    [BYTEENABLE_WIDTH - 1:0]    flash_mem_byteenable,
    output logic    [ADDR_WIDTH - 1:0]          flash_mem_address,
    /* Audio data output*/
    output logic    [AUDIO_DATA_WIDTH - 1:0]    audio_data                  /* Audio data output */
    /* All outputs are synchronized to clk_50. */
);

    localparam FSM_OUT_WIDTH = 4; /*please manually update bit width for state localparams.*/
    localparam STATE_WIDTH = ADDR_WIDTH + FSM_OUT_WIDTH;
    
    
    /* States */
    logic[STATE_WIDTH - 1:0] state;

    localparam READY_PAUSED =   4'b00_00;
    localparam READY =          4'b00_10;
    localparam FETCH =          4'b00_01;
    localparam SET =            4'b01_00;
    localparam INCREMENT =      4'b11_00;
    localparam DECREMENT =      4'b10_00;
	 

    /* FSM Outputs */
    assign flash_mem_address = state[STATE_WIDTH - 1:FSM_OUT_WIDTH];    /* 23 bits */
    /* state[3:2] uniquely identifies state*/                           /* 2 bits */
    /* ~state[1] determines whether music is being paused          	   /* 1 bit  */
    assign flash_mem_read = state[0];                                   /* 1 bit  */
    
    assign flash_mem_byteenable = 4'b0000;

    /*freq divider */
    logic sampling_freq;
    
    freq_divider m_fetch_divider (
        .inclk(clk_27),
        .rst(rst),
        .div(sample_freq_div),
        .outclk(sampling_freq)
    );

    /* Synchronize input pulse */ 
    logic synced;
    synchronizer mfetc_synchronizer 
    (
        .insignal(sampling_freq),
        .clk(clk_50),
        .synced(synced)
    );

 
    /* FSM to fetch music */
    logic [31:0] word_count;
    localparam [31:0] SAMPLES_PER_WORD = DATA_WIDTH / AUDIO_DATA_WIDTH;
    always_ff @(posedge clk_50) begin
        if(rst) begin
            /* Will not enter illegal state, since READY waits for 
            flash_mem_waitrequest to open up, and only allows 1 fetch at a time as burst is off*/
            state <= {(forward ? {ADDR_WIDTH{1'b0}} : SONG_ADDR_MAX), READY_PAUSED};
            word_count <= 'd0;
        end 
        else begin
            case(state[FSM_OUT_WIDTH - 1:0])
                READY_PAUSED:   state <= paused ? state : {flash_mem_address, READY};
                READY:          state <= (synced & ~flash_mem_waitrequest) ? {flash_mem_address, FETCH}: state;
                FETCH:          state <= {flash_mem_address, SET};
                SET: begin
                        if(flash_mem_readdatavalid) begin
                            audio_data <= flash_mem_readdata[word_count * AUDIO_DATA_WIDTH +: AUDIO_DATA_WIDTH];
                            state <= forward ? {flash_mem_address, INCREMENT} : {flash_mem_address, DECREMENT};
                        end
                        else begin
                            state <= state;
                        end
                    end
                INCREMENT: begin 
                    /*reading sample 0 to sample n-2 of each word with n samples*/
                    if(word_count < (SAMPLES_PER_WORD - 1)) begin
                            state <= {flash_mem_address, READY_PAUSED};
                            word_count <= word_count + 1;
                    end
                    /* Reading last sample */
                    else if ((word_count >= (SAMPLES_PER_WORD - 1)) && (flash_mem_address >= SONG_ADDR_MAX)) begin
                        state <= {{ADDR_WIDTH{1'b0}}, READY_PAUSED};
                        word_count <= 'd0;
                    end
                    /*reading sample n-1 of word, with n samples in 1 word*/
                    else begin
                        state <= {(flash_mem_address + 1), READY_PAUSED};
                        word_count <= 'd0;
                    end
                end
                DECREMENT: begin
                    if(word_count > 'd0) begin
                            state <= {flash_mem_address, READY_PAUSED};
                            word_count <= word_count - 1;
                        end
                    /* Reading last sample */
                    else if (word_count == 'd0 && flash_mem_address == 'd0) begin
                        state <= {SONG_ADDR_MAX, READY_PAUSED};
                        word_count <= SAMPLES_PER_WORD - 1;
                    end
                    /*reading sample n-1 of one word with n samples*/
                    else begin
                        state <= {(flash_mem_address - 1), READY_PAUSED};
                        word_count <=  SAMPLES_PER_WORD - 1;
                    end
                end
                default: begin
                    state <= {{ADDR_WIDTH{1'b0}}, READY_PAUSED};
                    word_count <= 'd0;
                    audio_data <= 'b0;
                end
            endcase
        end
    end 
endmodule
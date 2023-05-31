module music_fetcher (
    input logic             clk_27,
    input logic             clk_50, 
    input logic             rst,
    output logic            flash_mem_read,
    input  logic            flash_mem_waitrequest,
    output logic    [22:0]  flash_mem_address,
    input  logic    [31:0]  flash_mem_readdata,
    input  logic            flash_mem_readdatavalid,
    output logic    [3:0]   flash_mem_byteenable,
    output logic    [15:0]  audio_data
);

    logic[25:0] state;

    parameter READY = 3'b000;
    parameter FETCH = 3'b001;
    parameter WAIT = 3'b010;
    parameter SET = 3'b100;

    assign flash_mem_address = state[25:3];     /* 23 bits */
    /* state[2:1] is an identifier*/            /* 2 bits */
    assign flash_mem_read = state[0];           /* 1 bit  */
    
    assign flash_mem_byteenable = 4'b0000;


    logic sampling_freq;
    /* 22 KHz freq divider */
    freq_divider m_fetch_divider (
        .inclk(clk_27),
        .rst(rst),
        .div(32'd1227),
        .outclk(sampling_freq)
    );

    /* Synchronize input pulse */ 

    logic pulse;
    logic synced;
    always_ff @(posedge sampling_freq, posedge synced) begin
        if (synced) pulse <= 1'b0;
        else pulse <= 1'b1;
    end

    always_ff @(posedge clk_50) begin
        synced <= pulse;
    end

    /* FSM to fetch music */
    always_ff @(posedge clk_50) begin
        if(rst) state <= {{23{1'b0}}, READY};
        else begin
            case(state[2:0])
                READY: state <= (synced & ~flash_mem_waitrequest) ? {state[25:3], FETCH}: {state[25:3], READY};
                FETCH: state <= {state[25:3], WAIT};
                WAIT:begin 
                    state <= flash_mem_readdatavalid ? {(state[25:3] + 1), READY} : {state[25:3], WAIT};
                    audio_data <= flash_mem_readdata[15:0];
                end
                default: state <= {{23{1'b0}}, READY};
            endcase
        end
    end 
endmodule




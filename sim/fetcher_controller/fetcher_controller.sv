/* module plugs into instance of music_fetcher and controls
    input signals to obtain desired outputs     
*/
module fetcher_controller
#(
    parameter DEFAULT_FREQ_DIV = 32'd1227, /* Default number of times sampling period fits into 27Mhz */
    parameter PAUSE = 1'B0,                 /* states */
    parameter CONTINUE = 1'B1,
    parameter FORWARD = 1'B0,
    parameter BACKWARD = 1'B1,
    parameter RESET = 1'b1,
    parameter FREQ_DIV_WIDTH = 32,         

    parameter D = 8'h23,                    /*PS2 Scan codes for letters*/
    parameter E = 8'h24,
    parameter F = 8'h2b,
    parameter R = 8'h2d,
    parameter B = 8'h32
)
(
    input logic                         clk,
    input logic  [7:0]                  scan_code,           /* For keyboard scan code */                   
    input logic                         kbd_data_ready,      /* Keyboard ready (seems async) */
    input logic                         rst,                 /* Synchronous */
    input logic                         speed_up_event,      /* synchronous keyboard event */
    input logic                         speed_down_event,    /* synchronous keyboard event */
    input logic                         speed_reset_event,   /* synchronous keyboard event */
    output logic [FREQ_DIV_WIDTH - 1:0] sample_freq_div,     /* number of times sampling period fits into 27Mhz wave */ 
    output logic                        pause,               /* output logic to music_fetcher*/
    output logic                        forward,
    output logic                        fetcher_reset
);
    /* Synchronize kbd_data_ready */
    logic sync_kbd_ready;
    synchronizer kbd_sync
    (
        .insignal(kbd_data_ready),
        .clk(clk),
        .synced(sync_kbd_ready)
    );

    /* Synchronize up, down, reset, events */
    logic sync_spdup_e, sync_spddown_e, sync_rst_e;
    synchronizer up_sync
    (
        .insignal(speed_up_event),
        .clk(clk),
        .synced(sync_spdup_e)
    );
    synchronizer down_sync
    (
        .insignal(speed_down_event),
        .clk(clk),
        .synced(sync_spddown_e)
    );
    synchronizer reset_sync
    (
        .insignal(speed_reset_event),
        .clk(clk),
        .synced(sync_rst_e)
    );


    logic [2:0] state;
    assign pause =          ~state[2]; 
    assign forward =        ~state[1]; 
    assign fetcher_reset =   state[0];

    
    always_ff @(posedge clk) begin
        if (rst) begin
            /*Default is paused, forward, not reset*/
            state <= 4'b0;
        end
        else if (sync_kbd_ready)begin
            state[0] <= 1'b0;
            case(scan_code)
                D: state <= {PAUSE, state[1:0]};
                E: state <= {CONTINUE, state[1:0]};
                F: state <= {state[2], FORWARD, state[0]};
                B: state <= {state[2], BACKWARD, state[0]};
                R: state <= {state[2:1], RESET};
            endcase
        end  
        else state[0] <= 1'b0;
    end

    /* Speed events*/
    logic [FREQ_DIV_WIDTH - 1:0] speed;
    always_ff @(posedge clk) begin
        if(rst) begin
            speed <= {FREQ_DIV_WIDTH{1'b0}};
        end
        else if(sync_rst_e)           speed <= 32'b0;
        else if(sync_spdup_e)         speed <= speed - 1; 
        else if (sync_spddown_e)      speed <= speed + 1;
        else speed <= speed;
    end


    /* Register sample_freq_div to avoid glitches */
    always_ff @(posedge clk) begin
        sample_freq_div <= speed + DEFAULT_FREQ_DIV;
    end
endmodule


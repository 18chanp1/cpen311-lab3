/* module plugs into instance of music_fetcher and controls
    input signals to obtain desired outputs     
*/
module fetcher_controller
#(
    parameter DEFAULT_FREQ_DIV = 32'd1227, /* Default number of times sampling period fits into 27Mhz */
    parameter DEFAULT_PAUSE = 1'B1,         /* Default pause status */
    parameter DEFAULT_FORWARD = 1'B1,       /* Default forward/backward playing status */
    parameter FREQ_DIV_WIDTH = 32,          /* Do not change. Bit width for frequency divider*/

    parameter D = 8'h23,                    /*PS2 Scan codes for letters*/
    parameter E = 8'h24,
    parameter F = 8'h2b,
    parameter R = 8'h2d,
    parameter B = 8'h32
)
(
    input logic                         clk,
    input logic  [7:0]                  scan_code,           /* For keyboard scan code */                   
    input logic                         kbd_data_ready,      /* Keyboard ready (synchronized) */
    input logic                         rst,                 /* Synchronous */
    input logic                         speed_up_event,      /* synchronous keyboard event */
    input logic                         speed_down_event,    /* synchronous keyboard event */
    input logic                         speed_reset_event,   /* synchronous keyboard event */
    output logic [FREQ_DIV_WIDTH - 1:0] sample_freq_div,     /* number of times sampling period fits into 27Mhz wave */ 
    output logic                        pause,               /* output logic to music_fetcher*/
    output logic                        forward,
    output logic                        fetcher_reset
);
    /* Offset state[34:3] by 1227 so it starts up at default 1227 frequency. 
        Others adjusted accordingly to give 0 flip flop default state
    */
    logic [FREQ_DIV_WIDTH + 3 - 1 : 0] state;
    assign pause =          ~state[2]; 
    assign forward =        ~state[1]; 
    assign fetcher_reset =   state[0];

    always_ff @(posedge clk) begin
        if (rst) begin
            /* Same as initialization */
            state <= 35'b0;
        end
        else if (kbd_data_ready)begin
            state[0] <= 1'b0;
            case(scan_code)
                D: state[2] <= 1'b0; //pause
                E: state[2] <= 1'b1; //continue
                F: state[1] <= 1'b0;  //forward
                B: state[1] <= 1'b1; // backward
                R: state[0] <= 1'b1; //reset
            endcase
        end 
        else if(speed_reset_event)      state[34:3] <= 32'b0;
        else if(speed_up_event)         state[34:3] <= state[34:3] + 1; 
        else if (speed_down_event)      state[34:3] <= state[34:3] - 1; 
        else state[0] <= 1'b0;
    end

    /* Register sample_freq_div to avoid glitches */
    always_ff @(posedge clk) begin
        sample_freq_div <= state[34:3] + DEFAULT_FREQ_DIV;
    end
endmodule


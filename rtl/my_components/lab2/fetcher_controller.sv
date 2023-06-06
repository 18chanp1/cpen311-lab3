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
    input logic                         kbd_data_ready,      /* Keyboard ready, synced */
    input logic                         rst,                 /* Synchronous */
    input logic                         speed_up_event,      /* synchronous button event */
    input logic                         speed_down_event,    /* synchronous button event */
    input logic                         speed_reset_event,   /* synchronous button event */
    output logic [FREQ_DIV_WIDTH - 1:0] sample_freq_div,     /* number of times sampling period fits into 27Mhz wave */ 
    output logic                        pause,               /* output logic to music_fetcher*/
    output logic                        forward,
    output logic                        fetcher_reset
    /* Outputs are synchronized to clk */
);

    logic [2:0] state;
    assign pause =          ~state[2]; 
    assign forward =        ~state[1]; 
    assign fetcher_reset =   state[0];

    
    always_ff @(posedge clk) begin
        if (rst) begin
            /*Default is paused, forward, not reset*/
            state <= 3'b0;
        end
        else if (kbd_data_ready)begin
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
        else if(speed_reset_event)      speed <= 32'b0;
        else if(speed_up_event)         speed <= speed - 1; 
        else if (speed_down_event)      speed <= speed + 1;
        else speed <= speed;
    end


    /* Register sample_freq_div to avoid glitches */
    always_ff @(posedge clk) begin
        sample_freq_div <= speed + DEFAULT_FREQ_DIV;
    end
endmodule


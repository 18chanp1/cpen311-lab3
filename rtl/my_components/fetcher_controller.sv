module fetcher_controller
#(
    parameter DEFAULT_FREQ_DIV = 32'd1227,
    parameter DEFAULT_PAUSE = 1'B1,
    parameter DEFAULT_FORWARD = 1'B1,
    parameter FREQ_DIV_WIDTH = 32,  /* Do not change*/

    parameter D = 8'h 23,
    parameter E = 8'h24,
    parameter F = 8'h2b,
    parameter R = 8'h2d,
    parameter B = 8'h32
)
(
    input logic         clk,
    input logic [7:0]   scan_code,
    input logic         kbd_data_ready,
    input logic         rst,
    output logic        [FREQ_DIV_WIDTH - 1:0] sample_freq_div,
    output logic        pause,
    output logic        forward,
    output logic        fetcher_reset
);
    /* Some funny math here to "NOT" the gates so that they have a correct default */
    logic [FREQ_DIV_WIDTH + 3 - 1 : 0] state;
    assign sample_freq_div = (state[32:3] ^ (DEFAULT_FREQ_DIV));
    assign pause = ~state[2]; //default state 1
    assign forward = ~state[1]; //default state 1
    assign fetcher_reset = state[0];
    

    always_ff @(posedge clk) begin
        if (rst) begin
            state <= {DEFAULT_FREQ_DIV, ~DEFAULT_PAUSE, ~DEFAULT_FORWARD, 1'b0};
        end
        else if (kbd_data_ready)begin
            state[0] <= 1'b0;
            case(scan_code)
                D: state[2] <= 1'b0; //pause
                E: state[2] <= 1'b1; //continue
                F: state[1] <= 1'b0;  //forward
                B: state[1] <= 1'b1;
                R: state[0] <= 1'b1; //reset
            endcase
        end 
        else state[0] <= 1'b0;
    end
endmodule


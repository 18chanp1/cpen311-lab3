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
    input logic         speed_up_event,
    input logic         speed_down_event,
    input logic         speed_reset_event,
    output logic        [FREQ_DIV_WIDTH - 1:0] sample_freq_div,
    output logic        pause,
    output logic        forward,
    output logic        fetcher_reset
);
    /* Some funny math here to "NOT" the gates so that they have a correct default (0 when started) */
    logic [FREQ_DIV_WIDTH + 3 - 1 : 0] state;
    assign sample_freq_div = (state[34:3] + (DEFAULT_FREQ_DIV));
    assign pause = ~state[2]; 
    assign forward = ~state[1]; 
    assign fetcher_reset = state[0];

    always_ff @(posedge clk) begin
        if (rst) begin
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
        else if(speed_reset_event) state[34:3] <= 32'b0;
        else if(speed_up_event)state[34:3] <= state[34:3] + 1; 
        /*fancy magic trick to encode it again*/
        else if (speed_down_event) state[34:3] <= state[34:3] - 1; 
        /*fancy magic trick to encode it again*/
        else state[0] <= 1'b0;
    end
endmodule


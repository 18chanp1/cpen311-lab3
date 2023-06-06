`default_nettype none 
module sync_bus
#(
parameter NUMBITS = 8 
)
(
input async_clk,
input clk,
input logic [NUMBITS-1:0] data_in,
output logic [NUMBITS-1:0] data_out
);
    logic got_edge; 
    logic prev_edge;
    logic edge_detection_pulse;

    edge_trap edge_trap_inst 
    (
    .async_in(async_clk), .clk(clk),
    .sync_sig(got_edge) 
    );

    always_ff @(posedge clk) begin
        prev_edge <= got_edge; 
    end
    assign edge_detection_pulse = (!prev_edge) & got_edge;
    always_ff @(posedge clk) 
    begin
        if (edge_detection_pulse) 
        begin
            data_out <= data_in;
        end 
    end
endmodule

module edge_trap
(
    input async_in, 
    input clk, 
    output sync_sig
);

    reg ff1, ff2, ff3;
    logic auto_reset;

    always_ff @(posedge clk)
    begin
        ff2 <= ff1;
    end

    always_ff @(posedge clk)
    begin 
        ff3 <= ff2;
    end

    always_ff @(posedge async_in, posedge auto_reset)
    begin
        if(auto_reset) ff1 <= 1'b0;
        else ff1 <= 1'b1;
    end

    assign auto_reset = ff3 && (!async_in);
    assign sync_sig = ff3;

endmodule


`default_nettype wire
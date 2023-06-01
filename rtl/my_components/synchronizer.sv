module synchronizer 
(
    input logic insignal,
    input logic clk,
    output logic synced
);

	logic pulse;

    always_ff @(posedge insignal, posedge synced) begin
        if(synced) pulse <= 1'b0;
        else pulse <= 1'b1;
    end

    always_ff @(posedge clk) begin
        synced <= pulse;
    end
endmodule
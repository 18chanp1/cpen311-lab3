/* Synchronizes a pulse from insignal*/
module synchronizer 
(
    input logic insignal,   /* asynchronous pulse*/
    input logic clk,        /* clock which to align to*/
    output logic synced     /* synchronized pulse*/
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
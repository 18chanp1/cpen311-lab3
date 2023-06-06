/* Synchronizes a pulse from insignal*/
module synchronizer 
(
    input logic insignal,   /* asynchronous pulse*/
    input logic clk,        /* clock which to align to*/
    output logic synced     /* synchronized pulse*/
);

    logic fdc1_q;
    logic flip0_q;
    logic flip1_q;

    flip flip0(.D(1'b1), .C(insignal), .clr(fdc1_q), .Q(flip0_q));
    flip flip1(.D(flip0_q), .C(clk), .clr(1'b0), .Q(flip1_q));
    flip flip2(.D(flip1_q), .C(clk), .clr(1'b0), .Q(synced));
    flip flip3(.D(synced), .C(~clk), .clr(1'b0), .Q(fdc1_q));
endmodule

module flip(input logic D, input logic C, input logic clr, output logic Q);
    always_ff @(posedge C, posedge clr) begin
        if(clr) Q <= 1'b0;
        else Q <= D;
    end
endmodule
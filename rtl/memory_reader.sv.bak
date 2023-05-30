module memory_reader(
    input logic clk,
    input logic rst,
    input logic read,
    input logic     [22:0]  address,     
    output logic    [31:0]  data,
    output logic            flash_mem_read,
    input  logic            flash_mem_waitrequest,
    output logic    [22:0]  flash_mem_address,
    input  logic    [31:0]  flash_mem_readdata,
    input  logic            flash_mem_readdatavalid,
    output logic    [3:0]   flash_mem_byteenable
);
    
    //fsm
    logic [34:0] state;
    
    /*[2] is enable output, [1] is valid output, [0] is ID bit*/
    parameter [2:0] READY =     3'b000;
    parameter [2:0] READ =      3'b100;
    parameter [2:0] WAIT1 =     3'b001;
    parameter [2:0] DONE =      3'b010;

    //inputs from flash
    assign flash_mem_read =             state[2];
    assign flash_mem_readdatavalid =    state[1];

    //inputs from external
    assign flash_mem_address = address;

    //outputs
    assign data = state[34:3];


    always_ff @(posedge clk) begin
        if(rst) state <= {{32{1'bx}}, READY};
        else begin
            case(state[2:0])
                READY: state <= read & !flash_mem_waitrequest ? {address, READ}: {{32{1'bx}}, READY};
                READ: state <= {{32{1'bx}}, WAIT1};
                WAIT1: state <= flash_mem_readdatavalid ? {flash_mem_readdata, DONE} : {{32{1'bx}}, WAIT1};
                DONE: state <= {{32{1'bx}}, READY};
            endcase
        end
    end

endmodule
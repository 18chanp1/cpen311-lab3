`define USE_PACOBLAZE

module voldisp
#(
    parameter MUSIC_IN_PORT = 8'h00,
    parameter LED_1S_PORT = 8'h80,
    parameter LED_VOL_PORT = 8'h40
)
(
    input logic         clk, 
    input logic         read_interrupt,
    input logic  [7:0]  music_data,
    output logic [7:0]  LED_volume,
    output logic        LED_1s
);

    /*Instantiate pacoblaze processor*/

    logic [9:0]     address;
    logic [17:0]    instruction;
    logic [7:0]     port_id /* synthesis keep */;
    logic [7:0]     out_port /* synthesis keep */;
    logic [7:0]     in_port;
    logic           write_strobe;
    logic           read_strobe;
    logic           interrupt;
    logic           interrupt_ack;

    pacoblaze3 voldisp_pacoblaze
    (
        .address(address),
        .instruction(instruction),
        .port_id(port_id),
        .out_port(out_port),
        .in_port(in_port),
        .write_strobe(write_strobe),
        .read_strobe(read_strobe),
        .interrupt(interrupt),
        .interrupt_ack(interrupt_ack),
        .reset(1'b0),
        .clk(clk)
    );

    /*Set connect interrupt wire from flash FSM*/
    always_ff @(posedge clk, posedge interrupt_ack)
    begin
        if(interrupt_ack)   interrupt <= 1'b0;
        else                interrupt <= read_interrupt ? 1'b1 : interrupt;
    end

    /* Instruction memory fetcher instantiation*/
    logic [17:0] raw_instruction;

    pacoblaze_instruction_memory voldisp_pacoblaze_fetcher
    (
        .addr(address),
        .outdata(raw_instruction)
    );

    always_ff @(posedge clk)
    begin
        instruction <= raw_instruction;
    end

    /* Data in port */
    always_ff @(posedge clk)
    begin
        case(port_id)
            MUSIC_IN_PORT:  in_port <= music_data;
            default:        in_port <= 8'bx;
        endcase
    end

    /* Data out port */
    always_ff @(posedge clk)
    begin
        if(write_strobe) begin
            case(port_id)
                LED_1S_PORT:    LED_1s <= out_port[0];
                LED_VOL_PORT:   LED_volume <= out_port;
            endcase
        end
    end

endmodule
                


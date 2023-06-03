`timescale 10ns/10ns

module tb_fetcher_controller();
    /*Instantiate connections*/

    /*inputs from human interfaces*/
    logic clk, kbd_data_ready, rst, speed_up_event, speed_down_event, speed_reset_event;
    logic [7:0] scan_code;
    /* outputs to music fetcher*/
    logic [31:0] sample_freq_div;
    logic pause, forward, fetcher_reset;

    fetcher_controller DUT 
    (
        .clk(clk),
        .scan_code(scan_code),
        .kbd_data_ready(kbd_data_ready),
        .rst(rst),
        .speed_up_event(speed_up_event),
        .speed_down_event(speed_down_event),
        .speed_reset_event(speed_reset_event),
        .sample_freq_div(sample_freq_div),
        .pause(pause),
        .forward(forward),
        .fetcher_reset(fetcher_reset)
    );

    /* Final stop*/
    initial begin 
        #60;
        $stop;
    end

    /* clk */
    initial begin 
        forever begin
            clk = 1'b0;
            #1;
            clk = 1'b1;
            #1;
        end
    end

    parameter D = 8'h23;    /*PS2 Scan codes for letters*/
    parameter E = 8'h24;
    parameter F = 8'h2b;
    parameter R = 8'h2d;
    parameter B = 8'h32;

    task chk(int charcode);
        scan_code = charcode;
        kbd_data_ready = 1'b1;

        #2;

        kbd_data_ready = 1'b0;

        #2;
    endtask

    task chkspd(int op);
        if(op == 0) begin
            speed_up_event = 1'b1;
            #2;
            speed_up_event = 1'b0;
            #4;
        end
        else if (op == 1) begin
            speed_down_event = 1'b1;
            #2;
            speed_down_event = 1'b0;
            #4;
        end
        else begin
            speed_reset_event = 1'b1;
            #2;
            speed_reset_event = 1'b0;
            #4;
        end

    endtask


         

    initial begin
        rst = 1'b1;
        speed_up_event = 1'b0;
        speed_down_event = 1'b0;
        speed_reset_event = 1'b0;
        #2;
        rst = 1'b0;
        chk(E);
        chk(D);
        chk(B);
        chk(F);

        chkspd(0);
        chkspd(1);
        chkspd(1);
        chkspd(1);
        chkspd(1);
        chkspd(2);
        chk(R);
    end

        
endmodule

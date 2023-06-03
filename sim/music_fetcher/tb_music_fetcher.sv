`timescale 10ns / 10ns

module tb_music_fetcher();
    /* Instantiate connections */

    /* Outputs to DUT*/
    logic clk_27, clk_50, rst, forward, paused, restart;
    logic [31:0] sample_freq_div;

    /* Output to DUT as flash */
    logic flash_mem_waitrequest, flash_mem_readdatavalid;
    logic [31:0] flash_mem_readdata; 
    
    
    /* input from DUT */
    logic [15:0] audio_data;

    /* Input from DUT as flash */
    logic flash_mem_read;
    logic [22:0] flash_mem_address;
    logic [3:0] flash_mem_byteenable;

    music_fetcher DUT
    (
        .clk_27(clk_27),
        .clk_50(clk_50),
        .rst(rst),
        .forward(forward),
        .paused(paused),
        .restart(restart),
        .sample_freq_div(sample_freq_div),

        .flash_mem_waitrequest(flash_mem_waitrequest),
        .flash_mem_readdatavalid(flash_mem_readdatavalid),
        .flash_mem_readdata(flash_mem_readdata),

        .audio_data(audio_data),

        .flash_mem_read(flash_mem_read),
        .flash_mem_address(flash_mem_address),
        .flash_mem_byteenable(flash_mem_byteenable)
    );

    /* Final stop*/
    initial begin
        #400;
        $stop;
    end

    /* Setup clocks */

    initial begin
        forever begin
            clk_50 = 1'b0;
            #1;
            clk_50 = 1'b1;
            #1;
        end 
    end

    initial begin 
        forever begin
            clk_27 = 1'b0;
            #2;
            clk_27 = 1'b1;
            #2;
        end
    end

    /* checker task */
    task testMem(int data);
        #1;
        flash_mem_waitrequest = 1'b0; #2;

        $display("flash mem read : %b", flash_mem_read);

        while (~flash_mem_read)#1;

        /* Simulate reading memory */
        flash_mem_waitrequest = 1'b1;
        #2;

        /* Return data */
        flash_mem_readdatavalid = 1'b1;
        flash_mem_readdata = data;

        #2
        flash_mem_readdatavalid = 1'b0;
    endtask




    initial begin
        /* Setup initial signals @ clk = 0 */

        rst = 1'b1;
        forward = 1'b1;
        paused = 1'b1;
        restart = 1'b0;
        sample_freq_div = 32'd3; /*Set so we can fit in screen*/

        flash_mem_waitrequest = 1'b1;
        flash_mem_readdatavalid = 1'b0;
        flash_mem_readdata = {32{1'bx}};

        #1; //clk = 1
        rst = 1'b0;
        paused  = 1'b0;


        for (int i = 0; i < 10; i++) begin
            testMem(65536 + i);
        end 

        /* Test Pause */
        for (int i = 0; i < 2; i++) begin
            testMem((i << 16) +i);
        end 

        paused = 1'b1;
        /* Manual setting because the task hangs up*/
        flash_mem_waitrequest = 1'b0;
        #10;
        flash_mem_waitrequest = 1'b1;

        paused = 1'b0;

        /* Test Restart */

        for (int i = 0; i < 4; i++) begin
            testMem((i << 16) +i);
        end 

        rst = 1'b1; #2; rst = 1'b0;

        for (int i = 0; i < 2; i++) begin
            testMem((i << 16) +i);
        end 

        /* Test backwards reset */
        forward = 1'b0; #2;
        for (int i = 0; i < 2; i++) begin
            testMem((i << 16) +i);
        end 

        rst = 1'b1; #2; rst = 1'b0;

        for (int i = 0; i < 2; i++) begin
            testMem((i << 16) +i);
        end 

    end
endmodule
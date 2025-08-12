module vending_machine_tb();

    reg clk, rstn q_in, d_in;
    wire dispense, change;

    vending_machine dut(clk, rstn q_in, d_in, dispense, change);

    initial begin
        clk = 0;
        forever
            #1 clk = ~clk;
    end

    initial begin
        rstn = 0;
        q_in = 0;
        d_in = 0;
        @(negedge clk);
        rstn = 1;
        //test dollar
        d_in = 1;
        q_in = 0;
        repeat (10) @(negedge clk);
        d_in = 0;
        q_in = 1;
        repeat (10) @(negedge clk);
        $stop;

        initial 
            $monitor("rstn = %d, clk = %d", rstn, clk);
    end

endmodule
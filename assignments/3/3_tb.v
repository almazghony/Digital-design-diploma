module circuit3_tb();
    reg clk, rst;
    wire out_dut;

    circuit_3 dut(clk, rst, out_dut);

    initial begin
        clk = 0;
        forever
            #1 clk = ~clk;
    end

    initial begin
        rst = 1;
        @(negedge clk);
        rst = 0;
        repeat(100)
            @(negedge clk);
        $stop;
    end

endmodule
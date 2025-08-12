module dff_tb();

    reg pre, clk, d, e;
    wire q_dut;

    circuit_1 dut(pre, d, e, clk, q_dut);

    initial begin
        clk = 0;
        forever
            #1 clk = ~clk;
    end

    initial begin
        pre = 0;
        e = 0;
        @(negedge clk);
        pre = 1;

        repeat(10) begin
            d = $random;
            e = $random;
            @(negedge clk);
        end

        $stop;
    end

endmodule
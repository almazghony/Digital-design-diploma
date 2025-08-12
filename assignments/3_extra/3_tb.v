module counter_tb();

    reg clk, setn;
    wire [3:0]out_dut;
    counter dut(clk, setn, out_dut);
    initial begin
        clk = 0;
        forever begin
            #1 clk = ~clk;
        end
    end
    initial begin
        setn = 0;
        @(negedge clk);
        setn = 1;
        repeat(16)
            @(negedge clk);
        $stop;
    end

endmodule
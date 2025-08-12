module circuit4_tb();
    reg clk, rstn;
    wire [3:0]out_dut;

    circuit_4 dut(clk, rstn, out_dut);

    initial begin
        clk = 0;
        forever
            #1 clk = ~clk;
    end
    initial begin
      rstn = 0;
      @(negedge clk);
      rstn = 1;

        repeat(100)
            @(negedge clk);
        $stop;
    end

endmodule


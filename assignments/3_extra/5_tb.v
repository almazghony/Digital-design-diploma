module gray_counter_tb();
    reg clk, rst;
    wire [1:0]gray_out_dut;

    gray_counter dut(clk, rst, gray_out_dut);
    initial begin
        clk = 0;
        forever 
            #1 clk = ~clk;
    end

    initial begin
        rst = 1;
        @(negedge clk);
        rst = 0;
        repeat(10)
            @(negedge clk);
        $stop;
    end
endmodule


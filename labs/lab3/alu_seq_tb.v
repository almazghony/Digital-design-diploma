module alu_tb();
    reg [3:0] a_tb, b_tb;
    reg [1:0]op_tb;
    reg rst, clk;
    wire [7:0] out_dut;

    alu dut(a_tb, b_tb, op_tb, rst, clk, out_dut);

    initial begin
        clk = 0;
        forever
            #1 clk = ~clk;
    end

    initial begin
        rst = 1;
        @(negedge clk);
        rst = 0;

        repeat (10) @(negedge clk) begin
            a_tb = $random;
            b_tb = $random;
            op_tb = $random;
            @(negedge clk);
        end
        $stop;
            
    end

endmodule
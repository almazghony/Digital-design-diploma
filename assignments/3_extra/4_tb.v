module counter_modified_tb();
    reg clk, setn;
    wire [3:0] out_dut;
    wire div_2, div_4;

    counter_modified dut(clk, setn, out_dut, div_2, div_4);

    initial begin
        clk = 0;
        forever 
            #1 clk = ~clk;
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

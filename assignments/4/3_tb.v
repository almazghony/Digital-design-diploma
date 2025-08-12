module mod3_tdm_tb();
    reg [1:0] a, b, c, d;
    reg clk, rst;
    reg [1:0] out_exp;
    wire [1:0] out_dut;
    reg [1:0]cntr_tb;
    mod3_tdm dut(a, b, c, d, clk, rst, out_dut);

    initial begin
        clk = 0;
        forever
            #1 clk = ~clk;
    end

    initial begin
        rst = 1;
        cntr_tb = 0;
        a = 0;
        b = 1;
        c = 2;
        d = 3;
        out_exp = 0;
        @(negedge clk);
        rst = 0;
        repeat(10) begin
            cntr_tb = cntr_tb +1;
            case (cntr_tb)
                0 : out_exp <= a;
                2 : out_exp <= c;
                1 : out_exp <= b;
                3 : out_exp <= d;
            endcase
            @(negedge clk);
            if(out_dut != out_exp) begin
                $display("ERROR");
                $stop;
            end
        end
        $stop;
    end
endmodule
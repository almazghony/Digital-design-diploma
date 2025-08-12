module mod2_dsp_tb();
    reg [17:0] a_tb, b_tb, d_tb;
    reg [47:0] c_tb;
    reg clk, rst_n;

    reg [47:0] p_exp;
    wire [47:0] p_dut;

    mod2_dsp dut(a_tb, b_tb, d_tb, c_tb, clk, rst_n, p_dut);
    initial begin
        clk = 0;
        forever
            #1 clk = ~clk;
    end
    initial begin
        rst_n = 0;
        a_tb = 0;
        b_tb = 0;
        c_tb = 0;
        d_tb = 0;
        p_exp = 0;
        @(negedge clk);
        rst_n = 1;
        repeat(10) begin
            a_tb = $random%10;
            b_tb = $random%10;
            c_tb = $random%10;
            d_tb = $random%10;
            repeat(4)
                @(negedge clk);

            p_exp = ((b_tb + d_tb)*a_tb)+c_tb;
            
            // if(p_dut == p_exp) begin
            //     $display("ERROR");
            //     $stop;
            // end

        end
            $stop;
    end
endmodule
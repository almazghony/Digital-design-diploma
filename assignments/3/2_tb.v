module circuit5_tb1 ();
    reg d_tb, clk_tb, rstn_tb;
    wire q_dut, q_bar_dut, q_expected, q_bar_expected; 

    circuit_5c #("DFF") dut(d_tb, clk_tb, rstn_tb, q_dut, q_bar_dut);
    circuit_5b expected(d_tb, clk_tb, rstn_tb, q_expected, q_bar_expected);

    initial begin
        clk_tb = 0;
        forever
            #1 clk_tb = ~clk_tb;
    end

    initial begin
        rstn_tb = 0;
        d_tb = 0;
        @(negedge clk_tb);
        rstn_tb = 1;

        repeat(10) begin
            d_tb = $random;
            @(negedge clk_tb);
            if (q_dut != q_expected || q_bar_dut != q_bar_expected) begin
                $display("Error! expected: %d, dut: %d", q_expected, q_dut);
                $stop;
            end
        end
        $stop;
    end
endmodule


module circuit5_tb2 ();
    reg d_tb, clk_tb, rstn_tb;
    wire q_dut, q_bar_dut, q_expected, q_bar_expected; 

    circuit_5c #("TFF") dut(d_tb, clk_tb, rstn_tb, q_dut, q_bar_dut);
    circuit_5a expected(d_tb, clk_tb, rstn_tb, q_expected, q_bar_expected);

    initial begin
        clk_tb = 0;
        forever
            #1 clk_tb = ~clk_tb;
    end

    initial begin
        rstn_tb = 0;
        d_tb = 0;
        @(negedge clk_tb);
        rstn_tb = 1;

        repeat(10) begin
            d_tb = $random;
            @(negedge clk_tb);
            if (q_dut != q_expected || q_bar_dut != q_bar_expected) begin
                $display("Error! expected: %d, dut: %d", q_expected, q_dut);
                $stop;
            end
        end
        $stop;
    end
endmodule
module mux3_tb();

    reg [1:0]s_tb, a_tb, b_tb, c_tb;
    wire [1:0]y_dut, y_expected;

    mux_3 dut(a_tb, b_tb, c_tb, s_tb, y_dut);
    mux_2 refrence(a_tb, b_tb, c_tb, s_tb, y_expected);

    integer i;
    initial begin
        a_tb = 0;
        b_tb = 1;
        c_tb = 2;
        for(i = 0; i<4; i = i + 1) begin
            s_tb = i;
            #10;
            if (y_dut != y_expected)
                $display("Error! output = %d, refrence = %d", y_expected, y_dut);

        end           
    end
endmodule
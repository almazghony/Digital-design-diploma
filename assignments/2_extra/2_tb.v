module circuit2_tp();
    reg s0_tb, s1_tb;
    wire [3:0]y_dut;
    reg [3:0] y_expected;
    localparam d = 1;

    circuit_2 dut(d, s0_tb, s1_tb, y_dut);

    integer i;
    initial begin
        for (i = 0; i < 4; i = i + 1) begin
            {s1_tb, s0_tb} = i[1:0];
            y_expected = 4'b0;
            y_expected[i] = d;
            #10;
            if(y_dut != y_expected)
                $stop;
        end
    end
endmodule
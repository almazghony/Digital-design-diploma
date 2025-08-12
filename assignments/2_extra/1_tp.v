module circuit1_tp1();
    reg [2:0]a_tb;
    reg [6:0]out_expected;
    wire [6:0] out_dut;
    circuit_1 #(1) DUT(a_tb, out_dut);
    integer i;
    initial begin
        for(i = 0; i < 8; i = i+1) begin
            a_tb = i;
            case (a_tb)
                3'd1 : out_expected = 7'b0000001;
                3'd2 : out_expected = 7'b0000011;
                3'd3 : out_expected = 7'b0000010;
                3'd4 : out_expected = 7'b0000110;
                3'd5 : out_expected = 7'b0000111;
                3'd6 : out_expected = 7'b0000101;
                3'd7 : out_expected = 7'b0000100;
                default : out_expected = 7'b0000000;
            endcase
            #10;
            if (out_dut!= out_expected)
                $stop;
        end
    end
endmodule


module circuit1_tp2();
    reg [2:0]a_tb; 
    reg [6:0]out_expected;
    wire [6:0] out_dut;
    circuit_1 #(0) DUT(a_tb, out_dut);
    integer i;
    initial begin
        for(i = 0; i < 8; i = i+1) begin
            a_tb = i;
            case(a_tb)
                3'd1 : out_expected = 7'b0000001;
                3'd2 : out_expected = 7'b0000010;
                3'd3 : out_expected = 7'b0000100;
                3'd4 : out_expected = 7'b0001000;
                3'd5 : out_expected = 7'b0010000;
                3'd6 : out_expected = 7'b0100000;
                3'd7 : out_expected = 7'b1000000;
                default : out_expected = 7'b0000000;
            endcase
            #10;
            if (out_dut != out_expected)
                $stop;
        end
    end
endmodule
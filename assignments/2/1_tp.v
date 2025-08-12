module circuit_1tb1();
    parameter N = 4;
    reg [N-1:0]a_tb, b_tb, y_expected;
    wire [N-1:0]y_dut;

    circuit_1 #(.op(0)) dut(a_tb, b_tb, y_dut);
    initial begin
        repeat(100) begin
            a_tb = $random;
            b_tb = $random;
            y_expected = a_tb + b_tb;
            #10;
            if(y_dut != y_expected) begin
                $display("Error, a = %d, b = %d, expected value: %d, actual output: %d" ,a_tb, b_tb, y_expected, y_dut);
                $stop;
            end
        end
    end
endmodule

module circuit_1tb2();
    parameter N = 4;
    reg [N-1:0]a_tb, b_tb, y_expected;
    wire [N-1:0]y_dut;

    circuit_1 #(.op(1)) dut(a_tb, b_tb, y_dut);
    initial begin
        repeat(100) begin
            a_tb = $random;
            b_tb = $random;
            y_expected = a_tb | b_tb;
            #10;
            if(y_dut != y_expected) begin
                $display("Error, a = %d, b = %d, expected value: %d, actual output: %d" ,a_tb, b_tb, y_expected, y_dut);
                $stop;
            end
        end
    end
endmodule

module circuit_1tb3();
    parameter N = 4;
    reg [N-1:0]a_tb, b_tb, y_expected;
    wire [N-1:0]y_dut;

    circuit_1 #(.op(2)) dut(a_tb, b_tb, y_dut);
    initial begin
        repeat(100) begin
            a_tb = $random;
            b_tb = $random;
            y_expected = a_tb - b_tb;
            #10;
            if(y_dut != y_expected) begin
                $display("Error, a = %d, b = %d, expected value: %d, actual output: %d" ,a_tb, b_tb, y_expected, y_dut);
                $stop;
            end
        end
    end
endmodule

module circuit_1tb4();
    parameter N = 4;
    reg [N-1:0]a_tb, b_tb, y_expected;
    wire [N-1:0]y_dut;

    circuit_1 #(.op(3)) dut(a_tb, b_tb, y_dut);
    initial begin
        repeat(100) begin
            a_tb = $random;
            b_tb = $random;
            y_expected = a_tb ^ b_tb;
            #10;
            if(y_dut != y_expected) begin
                $display("Error, a = %d, b = %d, expected value: %d, actual output: %d" ,a_tb, b_tb, y_expected, y_dut);
                $stop;
            end
        end
    end
endmodule
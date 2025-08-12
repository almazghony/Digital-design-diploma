module circuit_1(input [3:0]a, output out);
    assign out = (a < 4'b1000 && a > 4'b0010) ? (1'b1) : (0);
endmodule
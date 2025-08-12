module circuit_3(a, b, c);
    parameter N = 4;
    input [N - 1 : 0] a, b;
    output [N - 1 : 0] c;
    assign c = a + b;
endmodule
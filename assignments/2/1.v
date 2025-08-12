module circuit_1#(parameter N = 4, parameter op = 0)
        (input [N-1:0] a, b,
        output [N:0]out);

    assign out = (op == 1) ? (a | b):
                (op == 2) ? (a - b):
                (op == 3) ? (a ^ b):
                (a + b);
endmodule
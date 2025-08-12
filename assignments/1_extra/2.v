module circuit_3(input a, b, c, output out);
    xor (w1, a, b);
    xnor (w2, c, b);
    and (out, c, w1, w2);
endmodule

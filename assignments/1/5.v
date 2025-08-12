module circuit_5(input [7:0]in, output [8:0] out);
    assign out = {in, ^in};
endmodule
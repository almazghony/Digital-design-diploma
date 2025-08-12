module mux_2(input [1:0] a, b, c, s, output [1:0]y);
    assign y = (s == 0)?(a):
            (s == 1)?(b):(c);
endmodule

module mux_3(input [1:0] a, b, c, s, output reg [1:0]y);
    always @(*) begin
      case (s)
        0 : y = a;
        1 : y = b;
        default : y = c;
      endcase
    end
endmodule
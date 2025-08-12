module alu_6(input [3 : 0]A, B, input [1:0]op, output reg [3 : 0]out);

    always @(*) begin
        case (op)
            2'b01 : out = A | B;
            2'b10 : out = A - B;
            2'b11 : out = A ^ B;
            default: out = A + B;
        endcase
    end
endmodule

module decoder_6(input [3:0]A, B, input en, [1:0]op,
                output reg a, b, c, d, e, f, g);
    wire [3:0]alu_out;
    alu_6 alu(.A(A), .B(B), .op(op), .out(alu_out));

    always @(*) begin
        if(en)
            case(alu_out)
                4'h1 : {a, b, c, d, e, f, g} = 7'b0110000;
                4'h2 : {a, b, c, d, e, f, g} = 7'b1101101;
                4'h3 : {a, b, c, d, e, f, g} = 7'b1111001;
                4'h4 : {a, b, c, d, e, f, g} = 7'b0110011;
                4'h5 : {a, b, c, d, e, f, g} = 7'b1011011;
                4'h6 : {a, b, c, d, e, f, g} = 7'b1011111;
                4'h7 : {a, b, c, d, e, f, g} = 7'b1110000;
                4'h8 : {a, b, c, d, e, f, g} = 7'b1111111;
                4'h9 : {a, b, c, d, e, f, g} = 7'b1111011;
                4'ha : {a, b, c, d, e, f, g} = 7'b1110111;
                4'hb : {a, b, c, d, e, f, g} = 7'b0011111;
                4'hc : {a, b, c, d, e, f, g} = 7'b1001110;
                4'hd : {a, b, c, d, e, f, g} = 7'b0111101;
                4'he : {a, b, c, d, e, f, g} = 7'b1001111;
                4'hf : {a, b, c, d, e, f, g} = 7'b1000111;
                default: {a, b, c, d, e, f, g} = 7'b1111110;
            endcase

    end
        

endmodule
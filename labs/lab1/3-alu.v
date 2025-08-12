module alu(in0, in1, op, out);
    parameter N = 4;
    input [N-1:0] in0, in1;
    input [2:0] op;
    output reg [N-1:0] out;
    always @(*) begin
        case(op)
            2'b00 : out = in0 + in1; 
            2'b01 : out = in0 | in1; 
            2'b10 : out = in0 - in1; 
            2'b11 : out = in0 ^ in1; 
        endcase
    end


endmodule
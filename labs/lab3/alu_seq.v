module alu#(parameter N = 4)(input [N-1:0] a, b,
                            input [1:0]op, 
                            input rst, clk,
                            output reg [2*N-1:0]out);

    reg [N-1:0]a_reg, b_Reg; 
    reg [1:0]op_reg;

always @(posedge clk, posedge rst) begin
    if (rst) begin
        a_reg <= 4'b0;        
        b_Reg <= 4'b0;
        op_reg <= 4'b0;
    end
    else begin
        a_reg <= a;        
        b_Reg <= b;
        op_reg <= op;

    end
end
    always @(posedge clk, posedge rst) begin
    if (rst)
        out = 0;
        case (op_reg)        
            2'b01 : out <= a_reg * b_Reg;
            2'b10 : out <= a_reg | b_Reg;
            2'b11 : out <= a_reg & b_Reg;
            default : out <= a_reg + b_Reg;
        endcase
    end

endmodule
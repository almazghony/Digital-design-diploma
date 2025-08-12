module circuit_2#(parameter N = 4, parameter op = 0)
        (input [N-1:0] a, b,
        input clk, rst,
        output reg [N:0]out);

    always @(posedge clk, posedge rst) begin
        if (rst)
            out = 0;
        else begin
            case (op)
                2'b1 : out <= a | b;
                2'b2 : out <= a - b;
                2'b3 : out <= a ^ b;
                default : out <= a + b;
            endcase
        end
    end
endmodule
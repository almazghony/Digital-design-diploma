module circuit_1#(parameter USE_GRAY = 1) 
                (input [2:0]a, output reg [6:0]out);

    always @(*) begin
      if (USE_GRAY == 0)
        case (a)
            3'd1 : out = 7'b0000001;
            3'd2 : out = 7'b0000010;
            3'd3 : out = 7'b0000100;
            3'd4 : out = 7'b0001000;
            3'd5 : out = 7'b0010000;
            3'd6 : out = 7'b0100000;
            3'd7 : out = 7'b1000000;
            default : out = 7'b0000000;
        endcase
    else 
        case (a)
            3'd1 : out = 7'b0000001;
            3'd2 : out = 7'b0000011;
            3'd3 : out = 7'b0000010;
            3'd4 : out = 7'b0000110;
            3'd5 : out = 7'b0000111;
            3'd6 : out = 7'b0000101;
            3'd7 : out = 7'b0000100;
            default : out = 7'b0000000;
        endcase
    end
endmodule
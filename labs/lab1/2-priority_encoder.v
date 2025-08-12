module encoder(in, out);
    input [4:0]in;
    output reg[2:0]out;
    always @(*) begin
        casex(in)
            4'b1xxx : out = 2'b11; 
            4'b01xx : out = 2'b10;
            4'b001x : out = 2'b01;
            4'b000x : out = 2'b00;
        endcase
    end

endmodule

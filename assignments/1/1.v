module circuit_1(input A, B, C, D, E, F, sel, 
		output out_bar, output reg out);

	always @(*) begin
		case(sel)
			0 : out = A & B & C;
			1 : out = ~(D ^ E ^ F);
		endcase
	
	end
        assign out_bar = ~out;
endmodule 
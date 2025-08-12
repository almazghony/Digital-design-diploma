module circuit_4#(parameter N = 4)
                (input [N-1:0]d,
                input aclr, aset, g,
                output reg [N-1:0]q);

    always @(*) begin
        if(aclr)
            q = 0;
        else if(aset)
            q = {N{1'b1}};
        else if(g)
            q = d;
    end
endmodule
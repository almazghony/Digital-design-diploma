module circuit_6(input d, clk, en, aln, adn, sln, sd, lat, output reg q);

    always @(*) begin

        if (lat) begin
          if(clk)
            if(en)
                if(~sln)
                    q = sd;
                else
                    q = d;
        end
    end
    always @(posedge clk, negedge aln) begin
        if (~aln)
            q <= ~adn;
        else if(~lat) begin
            if(en) begin
                if(~sln)
                    q <= sd;
                else 
                    q <= d;
            end
        end
    end
endmodule
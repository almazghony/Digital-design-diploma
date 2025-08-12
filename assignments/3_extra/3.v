module counter(input clk, setn, output reg [3:0]out);

    always @(posedge clk, negedge setn) begin
      
        if(~setn)
            out <= 4'b0001;

        else begin
            out <= out - 1;
        end
    end
endmodule


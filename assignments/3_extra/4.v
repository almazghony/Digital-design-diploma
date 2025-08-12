module counter_modified(input clk, setn,
            output reg [3:0]out,
            output reg div_2, div_4);

    always @(posedge clk, negedge setn) begin
      
        if(~setn) begin
            out <= 4'b0001;
            div_2 <= 1;
            div_4 <= 1;
        end

        else begin
            out <= out + 1;
            div_2 = ~div_2;
            if(div_2 == 1)
                div_4 <= ~div_4;
        end
    end
endmodule


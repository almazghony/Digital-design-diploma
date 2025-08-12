module dff(input pre, d, e, clk, output reg q);
    always @(posedge clk or negedge pre) begin
        if(~pre) 
            q <= 1'b1;
        else begin
            if (e)
                q <= d;
        end

    end
endmodule
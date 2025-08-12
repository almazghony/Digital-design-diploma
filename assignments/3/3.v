module circuit_3 (input clk, rst, output reg clk_div10_out);
    reg [3:0]count;
    always @(posedge clk, posedge rst) begin
        if (rst) begin
            count <= 4'b0000;
            clk_div10_out <= 4'b0000;
        end
        else begin
            if (count == 4'b1001) 
                count <= 4'b0000;
            else begin 
                count <= count + 1;
            end 
            if (count == 4'b0100||count == 4'b1001)
                clk_div10_out <= ~clk_div10_out;
        end
    end
endmodule

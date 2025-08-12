module gray_counter (input clk, rst,
                output reg[1:0]gray_out);
    reg [1:0]binary_count;

    always @(posedge clk, posedge rst) begin
        if(rst)
            binary_count <= 0;
        else begin
            binary_count <= binary_count + 1;
            gray_out <= {binary_count[1], (^binary_count)}; 
        end
    end
endmodule

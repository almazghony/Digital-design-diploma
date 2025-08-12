module mod1_LFSR(input clk, rst, set, output [3:0]out);
    
    reg q1, q2, q3, q4;
    always @(posedge clk, posedge set, posedge rst) begin
        if (rst && set) begin
            q1 <= 1;
            q2 <= 0;
            q3 <= 0;
            q4 <= 0;
        end
        else begin
            q1 <= q4;
            q2 <= q1 ^ q4;
            q3 <= q2;
            q4 <= q3;
        end
    end
    assign out = {q4, q3, q2, q1};
endmodule
module mod3_tdm(input [1:0] a, b, c, d,
            input clk, rst,
            output reg [1:0]out);
    reg [1:0]counter;
    always @(posedge clk, posedge rst) begin
        if (rst)
            counter <= 0;
        else    
            counter = counter + 1;
    end
    always @(*) begin
        case (counter) 
            0 : out = a;
            1 : out = b;
            2 : out = c;
            3 : out = d;
            default : out = a;
        endcase        
    end
endmodule


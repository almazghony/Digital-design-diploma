module circuit_2(input a, b, c, sel, input [2:0]d,
    output reg out, output out_bar);

    always @(*) begin
        if (sel == 0)
            out = (d[0] & d[1]) | d[2];
        else
           out = ~(a ^ b ^ c);
    end
    
    assign out_bar = ~ out;
endmodule
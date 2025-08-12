module counter#(parameter N = 4)
            (input clk, rst_n, up_ndown, en_load,
            input [N-1:0]load,
            output  reg[N-1:0]cnt);


    always @(posedge clk) begin
        if (~rst_n)
            cnt <= 0;
        else if (en_load)
            cnt = load;
        else if (up_ndown)
            cnt <= cnt + 1;
        else
            cnt <= cnt -1;
    end
endmodule
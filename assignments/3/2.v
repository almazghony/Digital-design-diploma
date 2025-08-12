module circuit_5c #(parameter FF_TYPE = "DFF")
                (input d, clk, rstn,
                output reg q,
                output q_bar);
    always @(posedge clk) begin
        if (~rstn)
            q <= 0;
        else if (FF_TYPE == "TFF")
            if(d)
                q <= ~  q;
        else
            q <= d;
    end
    assign q_bar = ~q;
endmodule


module circuit_5b(input d, rstn, clk, output reg q,
                output q_bar);
    always @(posedge clk, negedge rstn) begin
        if (~rstn)
            q <= 0;
        else
            q <= d;
    end
    assign q_bar = ~q;
endmodule

module circuit_5a(input t, rstn, clk, output reg q,
                output q_bar);
    always @(posedge clk) begin
        if (~rstn)
            q <= 0;
        else if(t)
            q <= ~q;
    end
    assign q_bar = ~q;
endmodule
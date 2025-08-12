module circuit_2(input d, s0, s1, output reg [3:0]y);
    always @(*) begin
        y = 4'b0000;
        case ({s1, s0})
            1 : y[1] = d;
            2 : y[2] = d;
            3 : y[3] = d;
            default : y[0] = d;
        endcase
    end
endmodule












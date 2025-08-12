module circuit_4(input [1:0]a, output [3:0]d);

    assign d = (a == 2'b00) ? (4'b0001): 
            (a == 2'b01) ? (4'b0010):
            (a == 2'b10) ? (4'b0100):
            (4'b1000);

endmodule
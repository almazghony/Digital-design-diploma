module mod2(
    input wire         clk, 
    input wire         rst,

    output reg [1:0]   y
);

    localparam [1:0] A = 2'b00;
    localparam [1:0] B = 2'b01;
    localparam [1:0] C = 2'b10;
    localparam [1:0] D = 2'b11;

    reg [1:0] cs, ns;

    //state memory
    always @(posedge clk, posedge rst) begin
        if (rst)
            cs <= A;
        else
            cs <= ns;
    end

    //next state logic
    always @(*) begin
        case (cs)
            A: ns = B;
            B: ns = C;
            C: ns = D;
            D: ns = A;
        endcase
    end

    //output logic
    always @(*) begin
        case (cs)
            A: y = 2'b00;
            B: y = 2'b01;
            C: y = 2'b11;
            D: y = 2'b10;
        endcase
    end

endmodule
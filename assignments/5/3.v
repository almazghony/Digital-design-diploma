module mod3(
    input  wire clk,
    input  wire rst,
    input  wire Din, 
    output reg  err
);

    localparam [2:0] START    = 3'b000;
    localparam [2:0] D0_is_1  = 3'b001;
    localparam [2:0] D1_is_1  = 3'b010;
    localparam [2:0] D0_not_1 = 3'b011;
    localparam [2:0] D1_not_1 = 3'b100;

    reg [2:0] cs, ns;

    //state memory
    always @(posedge clk, posedge rst) begin
        if(rst)
            cs <= 0;
        else
            cs <= ns;
    end

    // next state logic
    always @(*) begin
        case (cs)
            START: begin
                if(Din)
                    ns = D0_is_1;
                else
                    ns = D0_not_1;
            end
            D0_is_1: begin
                if(Din)
                    ns = D1_is_1;
                else
                    ns = D1_not_1;
            end
            D0_not_1:
                ns = D1_not_1;

            default: ns = START;
        endcase
    end

    //output logic
    always @(*) begin
        case (cs)
            D1_is_1: begin
                if(Din)
                    err = 1;
                else
                    err = 0;
            end
            default: err = 0;
        endcase
    end
endmodule
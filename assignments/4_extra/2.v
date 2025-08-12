module mod2_param_adder #(
    parameter WIDTH = 4,
    parameter PIPELINE_ENABLE = 1,
    parameter USE_FULL_ADDER = 1
)(
    input  wire clk, rst, cin,
    input  wire [WIDTH-1:0] a, b,
    output wire [WIDTH-1:0] sum,
    output wire cout
);

    wire [WIDTH:0]comb_result;
    wire effective_cin = (USE_FULL_ADDER) ? cin : 1'b0;
    assign comb_result = a + b + effective_cin;
    generate
        case (PIPELINE_ENABLE)
        1'b1 : begin
            reg sum_reg;
            reg cout_reg;
            always @(posedge clk, posedge rst) begin
                if (rst) begin
                    sum_reg <= 0;
                    cout_reg <= 0;
                end
                else begin
                {cout_reg, sum_reg} <= comb_result;
                end   
            end
            assign {cout, sum} = {cout_reg, sum_reg};
        end
        1'b0 : begin
            assign cout = comb_result[ WIDTH];
            assign sum = comb_result[WIDTH-1 : 0];
        end
        endcase
    endgenerate
endmodule 
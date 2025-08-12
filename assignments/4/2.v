module mod2_dsp#(parameter OPERATION = "ADD")
            (input [17:0] a, b, d,
            input [47:0] c,
            input clk, rst_n,
            output reg [47:0] p);

    reg [17:0] a_reg, b_reg, d_reg;
    reg [18:0] first_arth_out;
    reg[47:0] multiplier_out;
    reg [47:0] c_reg;

    always @(posedge clk) begin
        if(!rst_n) begin
            a_reg <= 0;
            b_reg <= 0;
            c_reg <= 0;
            d_reg <= 0;
        end
        else begin
            a_reg <= a;
            b_reg <= b;
            c_reg <= c;
            d_reg <= d;
        end
    end

    always @(posedge clk) begin
        if(!rst_n) begin
            first_arth_out <= 0;
            multiplier_out <= 0;
            p <= 0;
        end
        else begin
            if(OPERATION == "ADD") begin
                first_arth_out <= b_reg + d_reg;
                multiplier_out <= a_reg * first_arth_out;
                p <= c_reg + multiplier_out;
            end
            else if(OPERATION == "SUB") begin
                first_arth_out <= b_reg - d_reg;
                multiplier_out <= a_reg * first_arth_out;
                p <= c_reg - multiplier_out;
            end
        end
    end
endmodule

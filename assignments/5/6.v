module mod1_alsu#(parameter FULL_ADDER = "ON", INPUT_PRIORITY = "A")
                (input [2:0] a, b, op, 
                input cin, serial_in, dir, red_op_a,
                input red_op_b, bypass_a, bypass_b,
                input clk, rst,
                output reg [5:0]out,
                output reg [15:0]leds);

    reg [2:0] a_reg, b_reg, op_reg;
    reg cin_reg, serial_in_reg, dir_reg;
    reg red_op_a_reg, red_op_b_reg, bypass_a_reg, bypass_b_reg;
    reg rotate;
    reg [5:0]out_reg;

    always @(posedge clk, posedge rst) begin
        if(rst) begin
            a_reg <= 0;
            b_reg <= 0;
            op_reg <= 0;
            cin_reg <= 0; 
            serial_in_reg <= 0;
            dir_reg <= 0;
            red_op_a_reg <= 0;
            red_op_b_reg <= 0;
            bypass_a_reg <= 0;
            bypass_b_reg <= 0;
        end
        else begin
            a_reg <= a;
            b_reg <= b;
            op_reg <= op;
            cin_reg <= cin; 
            serial_in_reg <= serial_in;
            dir_reg <= dir;
            red_op_a_reg <= red_op_a;
            red_op_b_reg <= red_op_b;
            bypass_a_reg <= bypass_a;
            bypass_b_reg <= bypass_b;
        end
    end

    always @(posedge clk, posedge rst) begin
        if(rst) begin
            out <= 0;
            leds <= 0;
        end
        else begin
            if(bypass_a_reg) begin
                if(bypass_b_reg) begin
                    if(INPUT_PRIORITY == "A")
                        out <= a_reg;
                    else
                        out <= b_reg;
                end
                else
                    out <= a_reg;
            end
            else if(bypass_b_reg)
                out <= b;
            else begin
                if(red_op_a_reg) begin
                    if(red_op_b_reg) begin
                        if(INPUT_PRIORITY == "A") begin
                            case (op)
                                3'b000 : out <= &a_reg;
                                3'b001 : out <= ^a_reg;
                                default : begin 
                                    out <= 0;
                                    leds <= ~leds;
                                end
                            endcase
                        end
                        else if(INPUT_PRIORITY == "B") begin
                            case (op)
                                3'b000 : out <= &b_reg;
                                3'b001 : out <= ^b_reg;
                                default : begin 
                                    out <= 0;
                                    leds <= ~leds;
                                end                          
                            endcase
                        end
                    end
                    else begin
                        case (op)
                            3'b000 : out <= &a_reg;
                            3'b001 : out <= ^a_reg;
                            default : begin 
                                out <= 0;
                                leds <= ~leds;
                            end
                        endcase
                    end
                end
                else begin
                    if(red_op_b) begin
                        case (op)
                            3'b000 : out <= &b_reg;
                            3'b001 : out <= ^b_reg;
                            default : begin 
                                out <= 0;
                                leds <= ~leds;
                            end
                            endcase
                        end
                        else begin
                            case (op)
                            3'b000 : out <= a_reg & b_reg;
                            3'b001 : out <= a_reg ^ b_reg;
                            3'b010 : begin 
                                if(FULL_ADDER == "ON")
                                    out <= a_reg + b_reg + cin_reg;
                                else
                                    out <= a_reg + b_reg;
                            end
                            3'b011 : out <= a_reg * b_reg;
                            3'b100 : begin 
                                if(dir_reg) begin
                                    out_reg <= out;
                                    out[5:1] <= out_reg[4:0];
                                    out[0] <= serial_in_reg; 
                                end
                                else begin
                                    out_reg <= out;
                                    out[4:0] <= out_reg[5:1];
                                    out[5] <= serial_in_reg; 
                                end
                            end
                            3'b101 : begin
                                if(dir_reg) begin
                                    rotate = out[5];
                                    out[5:1] <= out[4:0];
                                    out[0] <= rotate; 
                                end
                                else begin
                                    rotate = out[0];
                                    out[4:0] <= out[5:1];
                                    out[5] <= rotate; 
                                end
                            end
                            default : begin 
                                out <= 0;
                                leds <= ~leds;
                            end
                        endcase
                    end
                end
            end
        end
    end
endmodule

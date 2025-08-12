module mod1_alsu#(
    parameter FULL_ADDER = "ON", 
    parameter INPUT_PRIORITY = "A"
)(
    input [2:0] a, b, op, 
    input cin, serial_in, dir, red_op_a,
    input red_op_b, bypass_a, bypass_b,
    input clk, rst,
    output reg [15:0] leds,
    output [3:0] anode,
    output [6:0] cathode
);

    reg [2:0] a_reg, b_reg, op_reg;
    reg cin_reg, serial_in_reg, dir_reg;
    reg red_op_a_reg, red_op_b_reg, bypass_a_reg, bypass_b_reg;
    reg rotate;
    reg [5:0] out_reg;
    reg error_flag;

    wire [5:0] mult_out;
    wire [3:0] adder_out;

    wire [3:0] digit;
    reg [3:0] digit_mux;
    reg [1:0] digit_sel;
    reg [3:0] anode_r;
    reg [6:0] cathode_r;

    assign anode = ~anode_r;
    assign cathode = cathode_r;

    mult_gen_0 mult_inst (
        .A(a),
        .B(b),
        .P(mult_out)
    );

    generate
        if(FULL_ADDER == "ON")
            c_addsub_0 add_inst (
                .A(a),
                .B(b),
                .C_IN(cin),
                .S(adder_out)
            );
        else
            c_addsub_0 add_inst (
                .A(a),
                .B(b),
                .C_IN(1'b0),
                .S(adder_out)
            );
    endgenerate

    always @(posedge clk or posedge rst) begin
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
        end else begin
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

    always @(posedge clk or posedge rst) begin
        if(rst) begin
            out_reg <= 0;
            leds <= 0;
            error_flag <= 0;
        end else begin
            error_flag <= 0;
            if(bypass_a_reg) begin
                if(bypass_b_reg) begin
                    out_reg <= (INPUT_PRIORITY == "A") ? a_reg : b_reg;
                end else
                    out_reg <= a_reg;
            end else if(bypass_b_reg) begin
                out_reg <= b;
            end else begin
                if(red_op_a_reg) begin
                    if(red_op_b_reg) begin
                        if(INPUT_PRIORITY == "A") begin
                            case (op)
                                3'b000 : out_reg <= &a_reg;
                                3'b001 : out_reg <= ^a_reg;
                                default : begin 
                                    out_reg <= 0;
                                    leds <= ~leds;
                                    error_flag <= 1;
                                end
                            endcase
                        end else begin
                            case (op)
                                3'b000 : out_reg <= &b_reg;
                                3'b001 : out_reg <= ^b_reg;
                                default : begin 
                                    out_reg <= 0;
                                    leds <= ~leds;
                                    error_flag <= 1;
                                end
                            endcase
                        end
                    end else begin
                        case (op)
                            3'b000 : out_reg <= &a_reg;
                            3'b001 : out_reg <= ^a_reg;
                            default : begin 
                                out_reg <= 0;
                                leds <= ~leds;
                                error_flag <= 1;
                            end
                        endcase
                    end
                end else begin
                    if(red_op_b_reg) begin
                        case (op)
                            3'b000 : out_reg <= &b_reg;
                            3'b001 : out_reg <= ^b_reg;
                            default : begin 
                                out_reg <= 0;
                                leds <= ~leds;
                                error_flag <= 1;
                            end
                        endcase
                    end else begin
                        case (op)
                            3'b000 : out_reg <= a_reg & b_reg;
                            3'b001 : out_reg <= a_reg ^ b_reg;
                            3'b010 : out_reg <= adder_out;
                            3'b011 : out_reg <= mult_out;
                            3'b100 : begin
                                out_reg <= dir_reg ? {out_reg[4:0], serial_in_reg} : {serial_in_reg, out_reg[5:1]};
                            end
                            3'b101 : begin
                                out_reg <= dir_reg ? {out_reg[4:0], out_reg[5]} : {out_reg[0], out_reg[5:1]};
                            end
                            default : begin 
                                out_reg <= 0;
                                leds <= ~leds;
                                error_flag <= 1;
                            end
                        endcase
                    end
                end
            end
        end
    end

    always @(posedge clk or posedge rst) begin
        if(rst) digit_sel <= 0;
        else digit_sel <= digit_sel + 1;
    end

    always @(*) begin
        if(error_flag) begin
            case(digit_sel)
                2'b00: begin digit_mux = 4'hE; anode_r = 4'b1110; end
                2'b01: begin digit_mux = 4'h4; anode_r = 4'b1101; end
                2'b10: begin digit_mux = 4'h0; anode_r = 4'b1011; end
                2'b11: begin digit_mux = 4'h4; anode_r = 4'b0111; end
            endcase
        end else begin
            case(digit_sel)
                2'b00: begin digit_mux = 4'hF; anode_r = 4'b1110; end
                2'b01: begin digit_mux = 4'hF; anode_r = 4'b1101; end
                2'b10: begin digit_mux = out_reg[5:4]; anode_r = 4'b1011; end
                2'b11: begin digit_mux = out_reg[3:0]; anode_r = 4'b0111; end
            endcase
        end
    end

endmodule

module bcd_to_7seg(
    input [3:0] bcd,
    output reg [6:0] seg
);
    always @(*) begin
        case (bcd)
            4'h0: seg = 7'b1000000;
            4'h1: seg = 7'b1111001;
            4'h2: seg = 7'b0100100;
            4'h3: seg = 7'b0110000;
            4'h4: seg = 7'b0011001;
            4'h5: seg = 7'b0010010;
            4'h6: seg = 7'b0000010;
            4'h7: seg = 7'b1111000;
            4'h8: seg = 7'b0000000;
            4'h9: seg = 7'b0010000;
            4'hA: seg = 7'b0001000;
            4'hB: seg = 7'b0000011;
            4'hC: seg = 7'b1000110;
            4'hD: seg = 7'b0100001;
            4'hE: seg = 7'b0000110;
            4'hF: seg = 7'b0001110;
            default: seg = 7'b1111111;
        endcase
    end
endmodule
module mod1_LFSR_tb();
    reg clk, rst, set;
    reg [3:0]out_exp_sequence[14:0];
    wire [3:0]out_dut;

    mod1_LFSR dut(clk, rst, set, out_dut);

    initial begin
        clk = 0;
        forever
            #1 clk = ~clk;
    end

    integer i = 0;
    initial begin
        rst = 1;
        set = 1;
        out_exp_sequence[0] = 4'b0001;
        out_exp_sequence[1] = 4'b0010;
        out_exp_sequence[2] = 4'b0100;
        out_exp_sequence[3] = 4'b1000;
        out_exp_sequence[4] = 4'b0011;
        out_exp_sequence[5] = 4'b0110;
        out_exp_sequence[6] = 4'b1100;
        out_exp_sequence[7] = 4'b1011;
        out_exp_sequence[8] = 4'b0101;
        out_exp_sequence[9] = 4'b1010;
        out_exp_sequence[10] = 4'b0111;
        out_exp_sequence[11] = 4'b1110;
        out_exp_sequence[12] = 4'b1111;
        out_exp_sequence[13] = 4'b1101;
        out_exp_sequence[14] = 4'b1001;
        out_exp_sequence[15] = 4'b0001;
        @(negedge clk);
        rst = 0;
        set = 0;
        for (i = 0; i < 15; i = i + 1) begin
            if(out_dut != out_exp_sequence[i]) begin
                $display("ERROR i = %d dut = %d and exp = %d", i, out_dut, out_exp_sequence[i]);
            end
            @(negedge clk);
        end
        $stop;
    end
endmodule
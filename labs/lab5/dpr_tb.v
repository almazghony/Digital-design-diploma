module dpr_tb();
    reg     [15:0] din;
    reg     [9:0] addr_wr;
    reg     [9:0] addr_rd;
    reg                     wr_en;
    reg                     rd_en;
    reg                     blk_select;
    reg                     clk;
    reg                     rst;
    wire    [15:0] dout;

    dpr dut(din, addr_wr, addr_rd, wr_en, rd_en, blk_select, clk, rst, dout);

    initial begin
        clk = 0;
        forever 
            #1 clk = ~clk;
    end

    initial begin
        //rst and initial values
        rst = 1;
        din = 0;
        addr_wr = 0;
        addr_rd = 0;
        wr_en = 0;
        rd_en = 0;
        blk_select = 0;
        clk = 0;
        rst = 0;
        @(negedge clk);
        rst = 0;
        //test write only
        repeat (10000) begin
            wr_en = $random;
            addr_wr = $random;
            blk_select = $random;
            @(negedge clk);
        end
        //test read and write
        repeat (1000) begin
            wr_en = $random;
            addr_wr = $random;
            blk_select = $random;
            din = $random;
            rd_en = $random;
            wr_en = $random;
            addr_rd = ~addr_wr;
        end
        $stop;
    end
endmodule
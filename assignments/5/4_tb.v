module mod4_tb();
    reg [16-1:0]   din;
    reg [10-1:0]   addr;
    reg            wr_en;
    reg            rd_en;
    reg            blk_select;
    reg            addr_en;
    reg            dout_en;
    reg            clk;
    reg            rst;

    wire [16-1:0]  dout;
    wire                  parity_out;

    mod4 dut(din, addr, wr_en, rd_en, blk_select, addr_en, dout_en, clk, rst, dout, parity_out);

    initial begin
        clk = 0;
        forever
            #1 clk = ~clk;
    end
    integer i;

    //reset test
    initial begin
        rst         = 1;
        din         = 0;
        addr        = 0;
        wr_en       = 0;
        rd_en       = 0;
        blk_select  = 0;
        addr_en     = 0;
        dout_en     = 0;
        
        for(i=0; i<1024; i = i + 1)
            dut.mem[i] = {16{1'b0}};

        @(negedge clk);

        if(dout != 0) begin
            $display("***  RESET TEST FAILS! ***");
            $stop;
        end
        else begin
            $display("*** RESET TEST PASS! ***");
            $stop;
        end
        rst = 0;

        //write test
        wr_en = 1;
        blk_select = 1;
        din = 16'h0123;
        addr = 10'h3;
        addr_en = 1;
        @(negedge clk);
        @(negedge clk);

        if(dut.mem[addr] != din) begin
            $display("*** WRITE TEST FAILS! ***");
            $stop;
        end
        else begin
            $display("*** WRITE TEST PASS! ***");
            $stop;
        end
    
        wr_en = 0;
        addr = 0;
        @(negedge clk);
        //read test
        rd_en = 1;
        dout_en = 1;
        addr = 10'h3;
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);

        if(dout != dut.mem[addr]) begin
            $display("*** READ TEST FAILS! ***");
            $stop;
        end
        else begin
            $display("*** READ TEST PASS! ***");
            $stop;
        end
    end

endmodule




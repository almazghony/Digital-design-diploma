module mod5_tb();
    reg  [16-1:0]  din_a;
    reg            wen_a;
    reg            ren_b;
    reg            clk_a;
    reg            clk_b;
    reg            rst;
    wire [16-1:0] dout_b;
    wire           full;
    wire           empty;
    reg [15:0] memi;
    mod5 dut(din_a, wen_a, ren_b, clk_a, clk_b, rst, dout_b, full, empty);

    initial begin
        clk_a = 0;
        clk_b = 0;
        forever begin
            #1;
            clk_a = ~clk_a;
            clk_b = ~clk_b;
        end
    end
    integer i;
    initial begin
        //reset test 
        rst   = 1;
        din_a = 0;
        din_a = 0;
        memi =  0;
        wen_a = 0;
        ren_b = 0;
        for(i = 0; i < 512; i = i + 1)
            dut.mem[i] = 0;
        @(negedge clk_a);
        if(full != 0 || empty != 1) begin
            $display("*** RESET TEST FAILS! ***");
            $stop;
        end

        @(negedge clk_b);
        if(dout_b != 0) begin
            $display("*** RESET TEST FAILS! ***");
            $stop;
        end
        $display("*** RESET TEST PASS! ***");
        $stop;
        rst = 0;

        //write test
        wen_a = 1;
        for(i = 0; i < 512; i = i + 1) begin
            din_a = $random;
            @(negedge clk_a);
            if(!dut.full && dut.mem[i] != din_a) begin
                $display("*** WRITE TEST FAILS! ***");
                $stop;
            end
        end
        $display("WRITE TEST PASS!");
        $stop;

        //read test
        ren_b = 1;
        for(i = 0; i < 20; i = i + 1) begin
            memi = dut.mem[i];
            @(negedge clk_a);
            if(dout_b != memi || dut.mem[i]) begin
                $display("*** READ TEST FAILS! ***");
                $stop;
            end
        end    
        $display("READ TEST PASS!");
        $stop;
    end
endmodule


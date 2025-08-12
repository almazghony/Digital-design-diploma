module circuit5_tb();
    reg sclr, sset, shiftin_tb, load,
        clk, en, aclr, aset;
    reg [7:0]d, q_expected;
    wire shiftout_tb;
    wire [7:0]q_dut;
    circuit_5 #(.LOAD_AVALUE(2), .LOAD_SVALUE(4)) 
        dut(sclr, sset, shiftin_tb, load, clk,
            en, aclr, aset, d, shiftout_tb, q_dut);
    initial begin
        clk = 0;
        forever
            #1 clk = ~clk;
    end 

    integer i;
    initial begin
        //check 1
        aclr = 1;
        aset = 1;
        for(i=0; i<5; i = i + 1)begin
            sclr = $random%2;
            sset = $random%2;
            en = $random%2;
            d = $random;
            load = $random%2;
            shiftin_tb = $random%2;
            q_expected = 0;
            @(negedge clk);
            if(q_dut != q_expected) begin
                $display("ERROR 1");
                $stop;
            end
        end

        //check 2
        aclr = 0;
        aset = 1;
        for(i=0; i<5; i = i + 1)begin
            sclr = $random%2;
            sset = $random%2;
            en = $random%2;
            d = $random;
            load = $random%2;
            shiftin_tb = $random%2;
            q_expected = 2;
            @(negedge clk);
            if(q_dut != q_expected) begin
                $display("ERROR 2");
                $stop;
            end
        end


        //check 3
        aclr = 0;
        aset = 0;
        sclr = 1;
        sset = 1;
        en = 1;
        for(i=0; i<5; i = i + 1)begin
            d = $random;
            load = $random%2;
            shiftin_tb = $random%2;
            q_expected = 0;
            @(negedge clk);
            if(q_dut != q_expected) begin
                $display("ERROR 3");
                $stop;
            end
        end

        //check 4
        aclr = 0;
        aset = 0;
        sclr = 0;
        sset = 1;
        en = 1;
        for(i=0; i<5; i = i + 1)begin
            d = $random;
            load = $random%2;
            shiftin_tb = $random%2;
            q_expected = 4;
            @(negedge clk);
            if(q_dut != q_expected) begin
                $display("ERROR 4");
                $stop;
            end
        end

        //check 5
        aclr = 0;
        aset = 0;
        sclr = 0;
        sset = 0;
        load = 1;
        en = 1;
        for(i=0; i<5; i = i + 1)begin
            d = $random;
            shiftin_tb = $random%2;
            q_expected = d;
            @(negedge clk);
            if(q_dut != q_expected) begin
                $display("ERROR 5");
                $stop;
            end
        end
        
        //check 6
        aclr = 1;
        @(negedge clk);
        aclr = 0;
        aset = 0;
        sclr = 0;
        sset = 0;
        load = 0;
        en = 1;
        shiftin_tb = 1;
        @(negedge clk);
        shiftin_tb = 0;
        repeat(6)
            @(negedge clk);
        $stop;
            
    end
endmodule
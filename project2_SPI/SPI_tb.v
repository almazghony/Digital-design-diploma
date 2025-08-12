module SPI_slave_interface_tb();
    reg         MOSI;
    reg         SS_n;
    reg         clk;
    reg         rst_n;
    wire        MISO;
    reg         MISO_exp;

    reg [9:0]   MOSI_data;

    SPI_slave_interface dut(MOSI, SS_n, clk, rst_n, MISO);

    initial begin
        clk = 0;
        forever
            #1 clk = ~clk;
    end
    integer i;
    initial begin
        //check rest functionality
        $readmemb ("mem.dat", dut.ram.mem);
        rst_n = 0;
        SS_n = 1;
        MISO_exp = 0;
        MOSI = 0;
        MOSI_data = 0;
        repeat(5)@ (negedge clk);
        if (MISO != MISO_exp) begin
            $display("*** RESET CHECK FAILS! ***");
        end
        $display("*** RESET FUNCTION TEST PASS! ***");
        rst_n = 1;

        //check write fucntionality
        SS_n = 0;
        MOSI = 0;
        @(negedge clk);
        @(negedge clk);
        MOSI_data = 10'b0000000011;
        for (i=0; i<10; i = i+1) begin
            MOSI = MOSI_data[9 - i];
            @(negedge clk);
        end
        SS_n = 1;
        @(negedge clk);
        MOSI = 0;
        SS_n = 0;
        @(negedge clk);
        @(negedge clk);
        MOSI_data = 10'b0101010101;
        for(i = 0; i<10; i = i+ 1) begin
            MOSI = MOSI_data[9 - i];
            @(negedge clk);
        end
        SS_n = 1;
        @(negedge clk);
        @(negedge clk);
        if (dut.ram.mem[3] != 10'b01010101) begin
            $display("*** WRITE CHECK FAILS! ***");
            $stop;
        end
        $display("*** WRITE CHECK PASS! ***");

        //check read fucntionality
        SS_n = 0;
        MOSI = 1;
        @(negedge clk);
        @(negedge clk);
        MOSI_data = 10'b1000000011;
        for (i=0; i<10; i = i+1) begin
            MOSI = MOSI_data[9 - i];
            @(negedge clk);
        end
        SS_n = 1;
        @(negedge clk);
        MOSI = 1;
        SS_n = 0;
        @(negedge clk);
        @(negedge clk);
        MOSI_data = 10'b1101010101;
        for(i = 0; i<10; i = i+1) begin
            MOSI = MOSI_data[9 - i];
            @(negedge clk);
        end
        @(negedge clk);
        @(negedge clk);
        repeat(8) begin
            @(negedge clk);
            if(MOSI != MOSI_data[7 - i]) begin
                $display ("*** READ TEST FAILS! ***");
                $display ("\n*** MOSI = %d, expected: %d ***", MOSI, MOSI_data);
                $stop;
            end
        end
        SS_n = 1;
        @(negedge clk);
        @(negedge clk);
        $display("*** READ TEST PASS! ***");
        $stop;
    end

    initial begin
        $monitor("Time=%0t | clk=%b | rst_n=%b | SS_n=%b | MOSI=%b | MISO=%b", 
                  $time, clk, rst_n, SS_n, MOSI, MISO);
    end
endmodule
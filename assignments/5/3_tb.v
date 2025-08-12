module mod3_tb();
    reg     clk;
    reg     rst;
    reg     Din;
    wire    err;

    reg [2:0] expected_sequence;
    
    mod3 dut(clk, rst, Din, err);

    initial begin
        clk = 0;
        forever
            #1 clk = ~clk;
    end
    initial begin
        rst = 1;
        Din = 0;
        expected_sequence= 3'b000;
        Din = 0;
        @(negedge clk);
        rst = 0;

        repeat (20) begin
            Din = $random %2;
            expected_sequence = {expected_sequence, Din};
            @(negedge clk);
        end
        $stop;
    end
    
    initial
        $monitor("Time=%0t | clk=%b | rst=%b | err=%b | Din = %b | expected_sequence = %b"
        , $time, clk, rst, err, Din, expected_sequence);
endmodule


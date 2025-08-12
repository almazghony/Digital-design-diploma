module mod2_tb ();
    reg          clk;
    reg          rst;
    reg  [1:0]   y_expected;

    wire [1:0]    y;

    mod2 dut (clk, rst, y);

    initial begin
        clk = 0;
        forever
            #1 clk = ~clk;
    end

    initial begin
        rst = 1;
        y_expected = 0;
        @(negedge clk);
        rst = 0;

        repeat(20) begin
            case(y_expected)
                2'b00: y_expected = 2'b01;
                2'b01: y_expected = 2'b11;
                2'b11: y_expected = 2'b10;
                2'b10: y_expected = 2'b00;
            endcase
            @(negedge clk);
            if (y != y_expected) begin
                $display("*** Error at time %0t: expected %b, got %b ***", $time,
                y_expected, y);
                $stop;
            end
        end
        $display("*** Test passed with no errors. ***");
        $stop;
    end

    initial
        $monitor("Time=%0t | clk=%b | rst=%b | y=%b", $time, clk, rst, y);
endmodule


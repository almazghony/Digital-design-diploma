module param_adder_tb;
    reg         clk, rst;
    reg  [3:0]  a, b;
    reg         cin;
    wire [3:0]  sum;
    reg  [3:0]  exp_s;
    wire        cout;
    reg         exp_c;

    mod2_param_adder dut(clk, rst, cin, a, b, sum, cout);
    initial begin
        clk = 0; 
        forever 
            #1 clk = ~clk;
    end

    initial begin
        rst = 1; 
        @(negedge clk); 
        rst = 0;
        repeat (20) begin
            a = $random;
            b = $random;
            cin = $random;
            @(negedge clk);

            {exp_c, exp_s} = a + b + cin;
            if ({cout, sum} !== {exp_c, exp_s}) begin
                $display("ERROR");
                $stop;
            end
        end
        $stop;
    end
endmodule
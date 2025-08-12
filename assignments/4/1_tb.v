module mod1_alsu_tb();

    // stimuls instantiation and clk generation
    reg cin, serial_in, dir, red_op_a, red_op_b;
    reg bypass_a, bypass_b, clk, rst;
    reg [2:0] a, b, op;
    reg [5:0]out_expected;
    reg [15:0]leds_expected;
    wire [5:0]out_dut;
    wire [15:0]leds_dut;

    mod1_alsu dut(a, b, op, cin, serial_in, dir, red_op_a, red_op_b,
            bypass_a, bypass_b, clk, rst, out_dut, leds_dut);

    initial begin
        clk = 0;
        forever
            #1 clk = ~clk;
    end

    initial begin


        // //1 check rst
        // rst = 1;
        // cin = 0;
        // serial_in = 0; dir = 0;
        // red_op_a = 0;
        // red_op_b = 0;
        // bypass_a = 0;
        // bypass_b = 0;
        // a = 0;
        // b = 0;
        // op = 0;
        // leds_expected = 0;
        // out_expected = 0;
        // repeat(10) begin
        //     @(negedge clk);
        //     if(out_dut != out_expected || leds_dut != leds_expected)
        //         begin
        //             $display("ERROR");
        //             $stop;
        //         end
        // end
        // $stop;       

        // //2 check bypass
        // rst = 1;
        // cin = 0;
        // serial_in = 0; dir = 0;
        // red_op_a = 0;
        // red_op_b = 0;
        // bypass_a = 1;
        // bypass_b = 1;
        // @(negedge clk);
        // rst = 0;
        // repeat(10) begin
        //     a = $random;
        //     b = $random;
        //     op = $urandom_range(5);
        //     @(negedge clk);
        //     @(negedge clk);
        //     leds_expected = 0;
        //     out_expected = a;
        //     if(out_dut != out_expected || leds_dut != leds_expected)
        //         begin
        //             $display("ERROR");
        //             $stop;
        //         end
        // end
        // $stop;       

        // //3_check op = 0
        // rst = 1;
        // cin = 0;
        // serial_in = 0; dir = 0;
        // bypass_a = 0;
        // bypass_b = 0;
        // op = 0;
        // leds_expected = 0;
        // @(negedge clk);
        // rst = 0;
        // repeat(10) begin
        //     red_op_a = $random;
        //     red_op_b = $random;
        //     a = $random;
        //     b = $random;
        //     if(red_op_a)
        //         out_expected = &a;
        //     else if (red_op_b)
        //         out_expected = &b;
        //     else
        //         out_expected = a & b;
        //     @(negedge clk);
        //     @(negedge clk);
        //     if(out_dut != out_expected || leds_dut != leds_expected)
        //         begin
        //             $display("ERROR");
        //             $stop;
        //         end
        // end
        // $stop;       

        // // 4_check op = 1
        // rst = 1;
        // cin = 0;
        // serial_in = 0; dir = 0;
        // bypass_a = 0;
        // bypass_b = 0;
        // op = 1;
        // leds_expected = 0;
        // @(negedge clk);
        // rst = 0;
        // repeat(10) begin
        //     red_op_a = $random;
        //     red_op_b = $random;
        //     a = $random;
        //     b = $random;
        //     if(red_op_a)
        //         out_expected = ^a;
        //     else if (red_op_b)
        //         out_expected = ^b;
        //     else
        //         out_expected = a ^ b;
        //     @(negedge clk);
        //     @(negedge clk);
        //     if(out_dut != out_expected || leds_dut != leds_expected)
        //         begin
        //             $display("ERROR");
        //             $stop;
        //         end
        // end
        // $stop;     



        // //5_check op = 2 
        // rst = 1;
        // serial_in = 0; 
        // dir = 0;
        // bypass_a = 0;
        // bypass_b = 0;
        // op = 2;
        // red_op_a = 0;
        // red_op_b = 0;
        // leds_expected = 0;
        // @(negedge clk);
        // rst = 0;
        // repeat(10) begin
        //     a = $random;
        //     b = $random;
        //     cin = $random;    
        //     out_expected = a + b + cin;
        //     @(negedge clk);
        //     @(negedge clk);
        //     if(out_dut != out_expected || leds_dut != leds_expected)
        //         begin
        //             $display("ERROR");
        //             $stop;
        //         end
        // end
        // $stop;       


        // //6_check op = 3
        // rst = 1;
        // serial_in = 0; 
        // dir = 0;
        // bypass_a = 0;
        // bypass_b = 0;
        // op = 3;
        // red_op_a = 0;
        // red_op_b = 0;
        // leds_expected = 0;
        // cin = 0;    
        // @(negedge clk);
        // rst = 0;
        // repeat(10) begin
        //     a = $random;
        //     b = $random;
        //     out_expected = a * b;
        //     @(negedge clk);
        //     @(negedge clk);
        //     if(out_dut != out_expected || leds_dut != leds_expected)
        //         begin
        //             $display("ERROR");
        //             $stop;
        //         end
        // end
        // $stop; 



        //7_check op = 4
        rst = 1;
        bypass_a = 0;
        bypass_b = 0;
        op = 4;
        red_op_a = 0;
        red_op_b = 0;
        leds_expected = 0;
        cin = 0;    
        out_expected = 0;
        @(negedge clk);
        rst = 0;
        repeat(10) begin
            serial_in = $random; 
            dir = $random;
            a = $random;
            b = $random;
            @(negedge clk);
            @(negedge clk);
            if(dir == 1) begin
                out_expected[5:1] = out_expected[4:0];
                out_expected[0] = serial_in; 
            end
            else begin
                out_expected[4:0] = out_expected[5:1];
                out_expected[5] = serial_in;
            end
            if(out_dut != out_expected || leds_dut != leds_expected)
                begin
                    $display("ERROR");
                    $stop;
                end
        end
        $stop;       

        // //8_check_ op = 5;
        // rst = 1;
        // bypass_a = 0;
        // bypass_b = 0;
        // op = 5;
        // red_op_a = 0;
        // red_op_b = 0;
        // leds_expected = 0;
        // cin = 0;    
        // out_expected = 0;
        // @(negedge clk);
        // rst = 0;
        // repeat(10) begin
        //     serial_in = $random; 
        //     dir = $random;
        //     a = $random;
        //     b = $random;
        //     @(negedge clk);
        //     @(negedge clk);
        //     if(dir == 1) begin
        //         out_expected[5:1] = out_expected[4:0];
        //         out_expected[0] = out_expected[5]; 
        //     end
        //     else begin
        //         out_expected[4:0] = out_expected[5:1];
        //         out_expected[5] = out_expected[0];
        //     end
        //     if(out_dut != out_expected || leds_dut != leds_expected)
        //         begin
        //             $display("ERROR");
        //             $stop;
        //         end
        // end
        // $stop;       
    end
endmodule
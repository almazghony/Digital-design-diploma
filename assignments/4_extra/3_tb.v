
module mod3_shift_register_tb;
    reg        clk, rst, load;
    reg  [7:0] load_value;
    wire [7:0] PO;

    shift_register #(.SHIFT_DIRECTION("LEFT"), .SHIFT_AMOUNT(3)) dut (
        .clk(clk), .rst(rst), .load(load), .load_value(load_value), .PO(PO)
    );

    initial begin 
        clk = 0; 
        forever 
            #1 clk = ~clk; 
    end

    initial begin
        rst = 1; 
        load = 0; 
        load_value = 8'hAA;
        @(negedge clk);
        rst = 0;
        load = 1; 
        @(negedge clk);
        load = 0;
        repeat (4) begin
            @(negedge clk);
            $display("PO = %b", PO);
        end
        $stop;
    end
endmodule

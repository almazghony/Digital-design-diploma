module mod1_tb ();
    reg [7:0]   speed_limit;
    reg [7:0]   car_speed;
    reg [6:0]   leading_distance;
    reg         clk;
    reg         rst;

    wire accelerate_car;
    wire unlock_doors;

    mod1 dut(speed_limit, car_speed, leading_distance, clk, rst, accelerate_car, unlock_doors);

    initial begin
        clk = 0;
        forever begin
            #1 clk = ~clk;
        end
    end

    initial begin
        //reset check
        rst = 1;
        speed_limit = 100;
        car_speed = 0;
        leading_distance = 0;
        clk = 0;
        @(negedge clk);
        if(accelerate_car != 0 && unlock_doors != 1)
            $display("ERROR RESET CHECK");
        else
            $display("RESET CHECK PASS");
        $stop;
        rst = 0;

        //accelerate check
        speed_limit = 100;
        repeat (10) begin
            car_speed = $urandom_range(0, 100);
            leading_distance = $urandom_range(40, 63);
            @(negedge clk);
            @(negedge clk);
            if(accelerate_car != 1 && unlock_doors != 0) begin
                $display("ERROR ACCELERATING CHECK");
                $stop;
            end
        end
        $display("ACCELERATE CHECK PASS");
        $stop;
        
        //decelerate check
        repeat (10) begin
            car_speed = $urandom_range(101, 255);
            leading_distance = $urandom_range(40, 63);
            @(negedge clk);
            if(accelerate_car != 0 && unlock_doors != 0) begin
                $display("ERROR DECELERATE CHECK");
                $stop;
            end
        end
        repeat (10) begin
            car_speed = $urandom_range(0, 100);
            leading_distance = $urandom_range(0, 40);
            @(negedge clk);
            if(accelerate_car != 0 && unlock_doors != 0) begin
                $display("ERROR DECELERATE CHECK");
                $stop;
            end
        end
        $display("DECELERATE CHECK PASS");
        $stop;

        //stop check
        repeat (10) begin
            car_speed = 0;
            leading_distance = $urandom_range(0, 40);
            @(negedge clk);
            if(accelerate_car != 0 && unlock_doors != 1) begin
                $display("ERROR STOP CHECK");
                $stop;
            end
        end
        $display("STOP CHECK PASS");
        $stop;
    end

    initial begin
        $monitor("Time=%0t | clk=%d | rst=%d | speed_limit =%d | car_speed=%d | leading_distance=%d", 
            $time, clk, rst, speed_limit, car_speed, leading_distance);
    end
endmodule
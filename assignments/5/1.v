module mod1 #(
    parameter MIN_DISTANCE = 7'd40
)(
    input wire  [7:0]   speed_limit,
    input wire  [7:0]   car_speed,
    input wire  [6:0]   leading_distance,
    input wire          clk,
    input wire          rst,

    output reg          accelerate_car,
    output reg          unlock_doors
);

    localparam  [1:0] ACCELERATE    = 2'b01;
    localparam  [1:0] STOP          = 2'b00;
    localparam  [1:0] DECELERATE    = 2'b10;


    (* fsm_encoding = "one_hot" *)

    reg [1:0] cs, ns;

    //state memory
    always @(posedge clk, posedge rst) begin
        if(rst)
            cs <= STOP;
        else 
            cs <= ns;
    end

    //next state logic
    always @(*) begin
        case (cs)
            STOP : begin
                if (leading_distance >= MIN_DISTANCE)
                    ns =  ACCELERATE;
                else    
                    ns = STOP;
            end
            ACCELERATE : begin
                if ((leading_distance >= MIN_DISTANCE) && (car_speed <= speed_limit))
                    ns = ACCELERATE;
                else
                    ns = DECELERATE;
            end
            DECELERATE : begin
                if (car_speed == 0)
                    ns = STOP;
                else if (leading_distance >= MIN_DISTANCE && car_speed <= speed_limit)
                    ns = ACCELERATE;
                else
                    ns = DECELERATE;
            end
            default : ns = STOP;
        endcase
    end

    //output logic

    always @(*) begin
        case (cs)
            STOP: begin
                unlock_doors = 1;
                accelerate_car = 0;
            end
            ACCELERATE: begin
                unlock_doors = 0;
                accelerate_car = 1;
            end
            DECELERATE: begin
                unlock_doors = 0;
                accelerate_car = 0;
            end
        endcase
    end

endmodule
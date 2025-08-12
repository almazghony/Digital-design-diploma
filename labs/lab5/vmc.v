module vending_machine(
    input clk, rstn q_in, d_in;
    output dispense, change;
);
    parameter WAIT = 2'b00;
    parameter q_25 = 2'b01;
    parameter q_50 = 2'b10;

    (* fsm_encoding = "gray" *)

    reg [1:0] cs, ns;

    //state memory
    always @(posedge clk, negedge rstn) begin
        if(!rstn)
            cs <= WAIT;
        else
            cs <= ns;
    end

    //next state logic
    always @(*) begin
        case (cs) 
            WAIT: 
                if(d_in)
                    ns = WAIT;
                else if(q_in)
                    ns = q_25;
            q_25: 
                if(q_in)
                    ns = q_25;
            q_50:
                if(q_in)
                    ns = WAIT;
        endcase
    end
    //output logic
    always @(*) begin
        if((cs == WAIT && d_in) || (cs == q_50 && q_in))
            dispense = 1'b1;
        else
            dispense = 1'b0;
        
        if(cs == WAIT && d_in)
            change = 1'b1;
        else
            change = 1'b0;
    end
endmodule
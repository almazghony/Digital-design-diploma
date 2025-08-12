module circuit_5(input a, b, ainv, binv, [1:0]op, carryin, output reg result);

    reg wirea, wireb;    


    always @(*) begin
        if(ainv)
            wirea = ~a;
        else    
            wire a = a;
        if(binv)
            wireb = ~b;
        else    
            wire b = b;
            
        case (op)
            2'b0 : result = wirea & wireb;
            2'b1 : result = wirea | wireb;
            default : result = wirea + wireb + carryin;
        endcase
    end
endmodule
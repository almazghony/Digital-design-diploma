module circuit_5 #(parameter LOAD_AVALUE = 1, SHIFT_DIRECTION = "LEFT", LOAD_SVALUE = 1, SHIFT_WIDTH = 8)
                (input sclr, sset, shiftin, load, clk, en, aclr, aset, 
                input [SHIFT_WIDTH-1:0]d,
                output reg shiftout, 
                output reg [SHIFT_WIDTH-1:0]q);
        
    always @(posedge clk, posedge aclr, posedge aset) begin
        if(aclr) 
            q <= 0;
        else if(aset) 
            q <= LOAD_AVALUE;
        else 
            if(en) begin
                if(sclr) 
                    q <= 0;
                else if(sset) 
                    q <= LOAD_SVALUE; 
                else if(load)
                    q <= d;
                else begin
                    if (SHIFT_DIRECTION == "LEFT")
                        {shiftout, q} <= {q, shiftin};
                    else if(SHIFT_DIRECTION == "RIGHT")
                        {q, shiftout} <= {shiftin, q};
                end
            end
    end

endmodule



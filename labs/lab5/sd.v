module seq_det(
    input clk;
    input rst_n;
    input x,
    output [2:0]y
)
    parameter a = 2'00;
    parameter b = 2'01;
    parameter c = 2'11;
    parameter d = 2'10;

    reg [1:0] cs, ns;

    //state memory
    always @(posedge clk) begin
        if(rst)
            ns <= 00;
        else
            ns <= cs;
    end
    //output logic
    always @(*) begin
        case(cs)
            a : y = 000;
            b : y = 001;
            c : y = 011;
            d : y = 111;
        endcase
    end
    //next state logic
    always @(*) begin
        case (cs) 
            a: begin
                if(x)
                    ns = a;
                else
                    ns = b
            end
            b: begin
                if(x)
                    ns = c;
                else
                    ns = b;
            end
            c: begin
                if(x)
                    ns = d;
                else
                    ns = b;
            end
            d: begin
                if (x)
                    ns = a;
                else
                    ns = b;
            end
        endcase
    end
    
endmodule
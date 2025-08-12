module mod3_shift_register #(
    parameter SHIFT_DIRECTION = "LEFT",
    parameter SHIFT_AMOUNT    = 1
)(
    input  wire        clk,
    input  wire        rst,        
    input  wire        load,        
    input  wire [7:0]  load_value,
    output reg  [7:0]  PO
);
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            PO <= 8'b0;
        end else if (load) begin
            PO <= load_value;
        end else begin
            if (SHIFT_DIRECTION == "LEFT") begin
                PO <= PO << SHIFT_AMOUNT;
            end else begin
                PO <= PO >> SHIFT_AMOUNT;
            end
        end
    end
endmodule

module mod5#(
    parameter FIFO_WIDTH = 16,
    parameter FIFO_DEPTH = 512
)(

    input  wire [FIFO_WIDTH-1:0]    din_a,
    input  wire                     wen_a,
    input  wire                     ren_b,
    input  wire                     clk_a,
    input  wire                     clk_b,
    input  wire                     rst,
    output reg  [FIFO_WIDTH-1:0]    dout_b,
    output wire                     full,
    output wire                     empty
);
    reg [FIFO_WIDTH-1:0] write_pointer;
    reg [FIFO_WIDTH-1:0] read_pointer;

    reg [FIFO_WIDTH-1:0] mem [0:FIFO_DEPTH-1];

    reg wr_flag;
    reg rd_flag;

    always @(posedge clk_a) begin
        if(rst) begin
            write_pointer <= 0;
            wr_flag <= 0;
        end
        else begin
            if(!full && wen_a) begin
                mem[write_pointer] <= din_a;
                write_pointer <= write_pointer + 1;
                if(write_pointer == FIFO_DEPTH-1)
                    wr_flag <= ~wr_flag;
            end
        end
    end
 
    always @(posedge clk_b) begin
        if(rst) begin
            dout_b <= 0;
            read_pointer <= 0;
            rd_flag <= 0;
        end
        else begin
            if(!empty && ren_b) begin
                dout_b <= mem[read_pointer];
                mem[read_pointer] <= 0;
                read_pointer <= read_pointer + 1;
                if(write_pointer == FIFO_DEPTH-1)
                    rd_flag <= ~rd_flag;
            end
        end
    end

    assign full  = ((write_pointer == read_pointer)&&(wr_flag != rd_flag)) ? 1 : 0;
    assign empty = ((write_pointer == read_pointer)&&(wr_flag == rd_flag)) ? 1 : 0;

endmodule


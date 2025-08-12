module mod4#(
    parameter MEM_WIDTH     = 16,
    parameter MEM_DEPTH     = 1024,
    parameter ADDR_SIZE     = 10,
    parameter ADDR_PIPELINE = "TRUE",
    parameter DOUT_PIPELINE = "TRUE",
    parameter PARITY_ENABLE = 1

)(
    input [MEM_WIDTH-1:0]   din,
    input [ADDR_SIZE-1:0]   addr,
    input                   wr_en,
    input                   rd_en,
    input                   blk_select,
    input                   addr_en,
    input                   dout_en,
    input                   clk,
    input                   rst,

    output [MEM_WIDTH-1:0]  dout,
    output                  parity_out
);
    reg  [ADDR_SIZE-1:0]    addr_reg;
    reg  [MEM_WIDTH-1:0]    dout_reg;
    reg  [MEM_WIDTH-1:0]    dout_mem;

    reg [MEM_WIDTH-1:0] mem [0:MEM_DEPTH-1];

    always @(posedge clk) begin
        if(rst) begin
            dout_reg   <= 0;
        end
        else begin
            if(dout_en)
                dout_reg <= dout_mem;
        end
    end

    always @(posedge clk) begin
        if(rst) begin
            addr_reg    <= 0;
            dout_mem    <= 0;
        end                
        else begin
            if(ADDR_PIPELINE == "TRUE") begin
                if(addr_en) begin
                    addr_reg <= addr;
                    if(blk_select && wr_en)
                        mem[addr_reg] <= din;
                end
                else if(blk_select && rd_en)
                    dout_mem <= mem[addr_reg];
            end
            else begin
                if(blk_select && wr_en)
                    mem[addr] <= din;
                else if(blk_select && rd_en)
                    dout_mem <= mem[addr];
            end
        end
    end
    
    assign dout = (DOUT_PIPELINE == "TRUE") ? dout_reg : dout_mem;

    generate
        if(PARITY_ENABLE)
            assign parity_out = ^dout;
        else
            assign parity_out = 0;
    endgenerate        
endmodule


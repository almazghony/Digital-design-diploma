module SPI_slave_interface(
    input   wire        MOSI,
    input   wire        SS_n,
    input   wire        clk,
    input   wire        rst_n,

    output  wire         MISO
);
    wire [9:0] din_rx_data;
    wire       rx_valid;
    wire [7:0] tx_data_dout;
    wire       tx_valid;

    RAM ram(din_rx_data, clk, rst_n, rx_valid,
        tx_data_dout, tx_valid); 
    slave slave(MOSI, SS_n, clk, rst_n, tx_valid,
        tx_data_dout, MISO, rx_valid, din_rx_data);
endmodule



module slave(
    input   wire        MOSI,
    input   wire        SS_n,
    input   wire        clk,
    input   wire        rst_n,
    input   wire        tx_valid,
    input   wire [7:0]  tx_data,

    output  reg         MISO,
    output  reg         rx_valid,
    output  reg  [9:0]  rx_data
);

    localparam IDLE         = 3'b000;
    localparam CHK_CMD      = 3'b001;
    localparam WRITE        = 3'b010;
    localparam READ_ADD     = 3'b011;
    localparam READ_DATA    = 3'b100;

    (* fsm_encoding = "gray" *)

    reg [2:0]   cs, ns;
    reg [3:0]   count;
    reg [9:0]   parallel_data;
    reg         add_data;
    reg [7:0]   received_data;
    reg         send_MISO;

    //output logic
    always @(posedge clk, negedge rst_n) begin
        if(~rst_n) begin
            add_data <= 0;
            MISO <= 0;
            rx_valid <= 0;
            rx_data <= 0; 
            count <= 0; 
            parallel_data <= 0;
            received_data <= 0;
            send_MISO <= 0;
        end
        else begin
            case (cs)
                IDLE: begin
                    MISO <= 0;
                    rx_valid <= 0;
                    rx_data <= 0; 
                    count <= 0; 
                    parallel_data <= 0;
                    received_data <= 0;
                    send_MISO <= 0;
                end
                WRITE: begin
                    if(count > 9) begin
                        rx_data <= parallel_data;
                        rx_valid <= 1;
                    end
                    else begin
                        parallel_data[9:1] <= parallel_data[8:0];
                        parallel_data[0] <= MOSI;
                        count <= count + 1;
                    end
                end
                READ_ADD: begin
                    if(count > 9) begin
                        rx_data <= parallel_data;
                        rx_valid <= 1;
                        add_data <= 1;
                    end
                    else begin
                        parallel_data[9:1] <= parallel_data[8:0];
                        parallel_data[0] <= MOSI;
                        count <= count + 1;
                    end
                end
                READ_DATA: begin
                    if (send_MISO && count < 8)
                        {MISO, received_data} <= {received_data, 1'b0};
                    else if (tx_valid) begin
                        received_data <= tx_data;
                        count <= 0;
                        send_MISO <= 1;
                    end
                    else if(count > 9) begin
                        rx_data <= parallel_data;
                        rx_valid <= 1;
                        add_data <= 0;
                    end
                    else if (count < 10) begin
                        parallel_data[0] <= MOSI;
                        parallel_data[9:1] <= parallel_data[8:0];
                        count <= count + 1;
                    end 
                end
            endcase
        end
    end

    //next state logic
    always @(*) begin
        case (cs)
            IDLE : begin
                if(SS_n)
                    ns = IDLE;
                else
                    ns = CHK_CMD;
            end
            CHK_CMD : begin
                if(SS_n)
                    ns = IDLE;
                else begin
                    if(MOSI)
                        if(add_data)
                            ns = READ_DATA;
                        else 
                            ns = READ_ADD;
                    else
                        ns = WRITE;
                end
            end
            WRITE: begin
                if (SS_n)
                    ns = IDLE;
                else
                    ns = WRITE;
            end
            READ_ADD: begin
                if (SS_n)
                    ns = IDLE;
                else    
                    ns = READ_ADD;
            end
            READ_DATA: begin
                if (SS_n)
                    ns = IDLE;
                else    
                    ns = READ_DATA;
            end
            default: ns = IDLE;                
        endcase
    end

    //state memory
    always @(posedge clk, negedge rst_n) begin
        if(~rst_n) 
            cs <= IDLE;
        else
            cs <= ns;
    end

endmodule


module RAM #(
    parameter MEM_DEPTH = 256,
    parameter ADDR_SIZE = 8
)(
    input       [9:0]   din,
    input               clk,
    input               rst_n,
    input               rx_valid,
    output reg  [7:0]   dout,
    output reg          tx_valid
);
    reg [ADDR_SIZE-1:0] mem [MEM_DEPTH-1:0];

    reg [ADDR_SIZE-1:0] write_address;
    reg [ADDR_SIZE-1:0] read_address;

    always @(posedge clk, negedge rst_n) begin
        if(~rst_n) begin
            dout            <= 0;
            tx_valid        <= 0;
            write_address   <= 0;
            read_address    <= 0;
        end
        else begin
            tx_valid <= 0;
            if(rx_valid) begin
                case (din[9:8])
                    2'b00 : write_address <= din[7:0];
                    2'b01 : mem[write_address] <= din [7:0];
                    2'b10 : read_address <= din[7:0];
                    2'b11 : begin
                        tx_valid <= 1;
                        dout <= mem[read_address];
                    end
                endcase
            end
        end
    end
endmodule
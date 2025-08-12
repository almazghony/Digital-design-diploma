module DSP48A1#(
    //Parameters :
    parameter A0_REG    = 0,
    parameter A1_REG    = 1,
    parameter B0_REG    = 0,
    parameter B1_REG    = 1,
    parameter C_REG     = 1,
    parameter D_REG     = 1,
    parameter M_REG     = 1,
    parameter P_REG     = 1,
    parameter CIN_REG   = 1,
    parameter COUT_REG  = 1,
    parameter OP_REG    = 1,
    parameter CIN_SEL   = "OPMODE5",
    parameter B_INPUT   = "DIRECT",
    parameter RST_TYPE  = "SYNC"
)( //I/O declarations
    input   [17:0]  A,
    input   [17:0]  B,
    input   [47:0]  C,
    input   [17:0]  D,
    input           clk,
    input           CARRYIN,
    input   [7:0]   OPMODE,
    input   [17:0]  BCIN,
    input           rstA,          
    input           rstB,          
    input           rstC,          
    input           rstD,          
    input           rstP,          
    input           rstM,          
    input           rstCARRY,
    input           rstOP,
    input           CEA,
    input           CEB,
    input           CEC,
    input           CED,
    input           CEM,
    input           CEP,
    input           CECIN,
    input           CEOP,
    input   [47:0]  PCIN,
    output  [17:0]  BCOUT,
    output  [47:0]  PCOUT,
    output  [47:0]  P,
    output  [35:0]  M,
    output          CARRYOUT,
    output          CARRYOUTF
);
    //internal signals
    reg [17:0]  A0, A1;
    reg [17:0]  B0, B1;
    reg [47:0]  C0;
    reg [17:0]  D0;
    reg [35:0]  M0;
    reg [47:0]  P0;
    reg         CYO;
    reg         CYI;
    reg [7:0]   OP0;

    wire        carryIN_cascade;
    wire        carryOUT_cascade;
    wire        CIN;
    wire        COUT;
    wire [35:0] multiplier_out;
    wire [17:0] pre_adder_out;
    wire [17:0] pre_adder_Din;
    wire [17:0] pre_adder_Bin;
    wire [17:0] A1_source;
    wire [17:0] mult_Ain;
    wire [17:0] mult_Bin;
    wire [17:0] B1_source;
    wire [47:0] C_port;
    wire [48:0] post_adder_out;
    wire [7:0]  OP;
    wire [17:0] B_used;
    wire [47:0] X, Z;

    //sequential operations
    always @(posedge clk) begin
        if (rstA) begin
            A0 <= 0;
            A1 <= 0;
        end
        else if (CEA) begin      
                A0 <= A;
                A1 <= A0;
        end
        if (rstB) begin
            B0 <= 0;
            B1 <= 0;
        end
        else if(CEB) begin
            B0 <= B_used;
            B1 <= B1_source;
        end

        if (rstC)
            C0 <= 0;
        else if(CEC)
                C0 <= C;

        if (rstD)
            D0 <= 0;
        else if(CED)
                D0 <= D;
        
        if (rstCARRY) begin
            CYO <= 0;
            CYI <= 0;
        end
        else if(CECIN)begin
            CYI <= carryIN_cascade;
            CYO <= COUT;
        end

        if (rstM)
            M0 <= 0;
        else if(CEM)
            M0 <= multiplier_out;
    
        if (rstP)
            P0 <= 0;
        else if (CEP)
            P0 <= post_adder_out[47:0];
    
        if (rstOP)
            OP0 <= 0;
        else if (CEOP)
            OP0 <= OPMODE;
    end


    // *** PIPELINE STAGES ***

    //first
    assign pre_adder_Din = (D_REG)  ? D0 : D;
    assign pre_adder_Bin = (B0_REG)  ? B0 : B_used;
    assign A1_source     = (A0_REG) ? A0 : A;
    assign C_port        = (C_REG)  ? C0 : C;
    
    //second
    assign mult_Ain      = (A1_REG) ? A1 : A1_source;
    assign mult_Bin      = (A1_REG) ? B1 : B1_source;

    //third
    assign M = (M_REG) ? M0 : multiplier_out;
    assign CIN           = (CIN_REG)  ? CYI : carryIN_cascade;

    //forth
    assign P = (P_REG) ? P0 : post_adder_out[47:0];
    assign CARRYOUT = (COUT_REG) ? CYO : COUT;


    // *** Logic ***
    assign OP = (OP_REG) ? OP0 : OPMODE;
    
    assign B_used = (B_INPUT == "DIRECT") ? B :
                    (B_INPUT == "CASCADE") ? BCIN :
                    0;

    assign pre_adder_out = (OP[6]) ? (pre_adder_Din - pre_adder_Bin) :
                           (pre_adder_Din + pre_adder_Bin);

    assign B1_source = (OP[4]) ? pre_adder_out : pre_adder_Bin;

    assign carryIN_cascade = (CIN_SEL == "OPMODE5") ? OP[5] :
                             (CIN_SEL == "CARRYIN") ? CARRYIN :
                             0;

    assign X =  (OP[1:0] == 2'd1) ? {{12{1'b0}} ,M} :
                (OP[1:0] == 2'd2) ? P :
                (OP[1:0] == 2'd3) ? {pre_adder_Din[11:0], mult_Ain[17:0], mult_Bin[17:0]} : {48{1'b0}};
   
    assign Z =  (OP[3:2] == 2'd1) ? PCIN :
                (OP[3:2] == 2'd2) ? P :
                (OP[3:2] == 2'd3) ? C_port:
                {48{1'b0}};

    assign multiplier_out = mult_Ain * mult_Bin;
 
    assign post_adder_out = (OP[7]) ? ( Z - X - CIN) : (X + Z + CIN);

    assign PCOUT = P;
    
    assign BCOUT = (B1_REG)? B1 : B1_source;

    assign COUT = post_adder_out[48];

    assign CARRYOUTF = CARRYOUT;

endmodule
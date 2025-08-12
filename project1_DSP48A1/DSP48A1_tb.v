module DSP48A1_tb();
   //stimulus declaration and module instantiation
    reg   [17:0]  A;
    reg   [17:0]  B;
    reg   [47:0]  C;
    reg   [17:0]  D;
    reg           clk;
    reg           CARRYIN;
    reg   [7:0]   OPMODE;
    reg   [17:0]  BCIN;
    reg           rstA;          
    reg           rstB;          
    reg           rstC;          
    reg           rstD;          
    reg           rstP;          
    reg           rstM;          
    reg           rstCARRY;
    reg           rstOP;
    reg           CEA;
    reg           CEB;
    reg           CEC;
    reg           CED;
    reg           CEM;
    reg           CEP;
    reg           CECIN;
    reg           CEOP;
    reg   [47:0]  PCIN;
    reg [17:0] BCOUT_exp;
    reg [47:0] PCOUT_exp;
    reg [47:0] P_exp;
    reg [35:0] M_exp;
    reg CARRYOUT_exp;
    reg CARRYOUTF_exp;

    wire  [17:0]  BCOUT;
    wire  [47:0]  PCOUT;
    wire  [47:0]  P;
    wire  [35:0]  M;
    wire          CARRYOUT;
    wire          CARRYOUTF;

    DSP48A1 dut (A, B, C, D, clk, CARRYIN, OPMODE, BCIN,
                rstA, rstB, rstC, rstD, rstP, rstM,
                rstCARRY, rstOP, CEA, CEB, CEC, CED,
                CEM, CEP, CECIN, CEOP, PCIN, BCOUT, PCOUT, 
                P, M, CARRYOUT, CARRYOUTF);

    initial begin
        clk = 0;
        forever
            #1 clk = ~clk;
    end

    initial begin
        //check reset functionality
        rstA = 1;
        rstB = 1;
        rstC = 1;
        rstD = 1;
        rstP = 1;
        rstM = 1;
        rstCARRY = 1;
        rstOP = 1;

        A = $random;
        B = $random;
        C = $random;
        D = $random;
        CARRYIN = $random;
        OPMODE = $random;
        BCIN = $random;
        CEA = $random;
        CEB = $random;
        CEC = $random;
        CED = $random;
        CEM = $random;
        CEP = $random;
        CECIN = $random;
        CEOP = $random;
        CEA = $random;
        CEB = $random;
        CEC = $random;
        CED = $random;
        CEM = $random;
        CEP = $random;
        CECIN = $random;
        CEOP = $random;
        PCIN = $random;
        BCOUT_exp = 0;
        PCOUT_exp = 0;
        P_exp = 0;
        M_exp = 0;
        CARRYOUT_exp = 0;
        CARRYOUTF_exp = 0;
        repeat(5) @(negedge clk);
        if(BCOUT_exp != BCOUT) begin
            $display("*** BCOUT RESET ERROR ***");
            $stop;
        end
        if(PCOUT_exp != PCOUT) begin
            $display("*** PCOUT RESET ERROR ***");
            $stop;
        end
        if(P_exp != P) begin
            $display("*** P RESET ERROR ***");
            $stop;
        end
        if(M_exp != M) begin
            $display("*** M RESET ERROR ***");
            $stop;
        end
        if(CARRYOUT_exp != CARRYOUT) begin
            $display("*** CARRYOUT RESET ERROR ***");
            $stop;
        end
        if(CARRYOUTF_exp != CARRYOUTF) begin
            $display("*** CARRYOUTF RESET ERROR ***");
            $stop;
        end
        $display("*** Reset function works correctly! ***");
        $stop;

        rstA = 0;
        rstB = 0;
        rstC = 0;
        rstD = 0;
        rstP = 0;
        rstM = 0;
        rstCARRY = 0;
        rstOP = 0;

        CEA = 1;
        CEB = 1;
        CEC = 1;
        CED = 1;
        CEM = 1;
        CEP = 1;
        CECIN = 1;
        CEOP =1;

        //check dsp path 1
        OPMODE = 8'b11011101;
        A = 20;
        B = 10;
        C = 350;
        D = 25;
        BCIN = $random;
        PCIN = $random;
        CARRYIN = $random;
        BCOUT_exp = 'hf;
        M_exp = 'h12c;
        P_exp = 'h32;
        PCOUT_exp = P_exp;
        CARRYOUT_exp = 0;
        CARRYOUTF_exp = CARRYOUT_exp;
        repeat(4) @(negedge clk);
        if(BCOUT != BCOUT_exp) begin
           $display("*** ERROR in BCOUT ***");
           $stop;
        end
        if(M != M_exp) begin
           $display("*** ERROR in M ***");
           $stop;
        end
        if(P != P) begin
           $display("*** ERROR in P ***");
           $stop;
        end
        if(PCOUT != PCOUT) begin
           $display("*** ERROR in PCOUT ***");
           $stop;
        end
        if(CARRYOUT != CARRYOUT_exp) begin
           $display("*** ERROR in CARRYOUT ***");
           $stop;
        end
        if(CARRYOUTF != CARRYOUTF_exp) begin
           $display("*** ERROR in CARRYOUTF ***");
           $stop;
        end
        $display("*** Path 1 works correctly! ***");
        $stop;

        //check dsp path 2
        OPMODE = 8'b00010000;
        BCOUT_exp = 'h23;
        M_exp = 'h2bc;
        P_exp = 0;
        PCOUT_exp = P_exp;
        CARRYOUT_exp = 0;
        CARRYOUTF_exp = CARRYOUT_exp;
        repeat(3) @(negedge clk);
        if(BCOUT != BCOUT_exp) begin
           $display("*** ERROR in BCOUT ***");
           $stop;
        end
        if(M != M_exp) begin
           $display("*** ERROR in M ***");
           $stop;
        end
        if(P != P) begin
           $display("*** ERROR in P ***");
           $stop;
        end
        if(PCOUT != PCOUT) begin
           $display("*** ERROR in PCOUT ***");
           $stop;
        end
        if(CARRYOUT != CARRYOUT_exp) begin
           $display("*** ERROR in CARRYOUT ***");
           $stop;
        end
        if(CARRYOUTF != CARRYOUTF_exp) begin
           $display("*** ERROR in CARRYOUTF ***");
           $stop;
        end
        $display("*** Path 2 works correctly! ***");
        $stop;
      
        //check dsp path 3
        OPMODE = 8'b00001010;
        BCOUT_exp = 'ha;
        M_exp = 'hc8;
        P_exp = 0;
        PCOUT_exp = P_exp;
        CARRYOUT_exp = 0;
        CARRYOUTF_exp = CARRYOUT_exp;
        repeat(3) @(negedge clk);
        if(BCOUT != BCOUT_exp) begin
           $display("*** ERROR in BCOUT ***");
           $stop;
        end
        if(M != M_exp) begin
           $display("*** ERROR in M ***");
           $stop;
        end
        if(P != P) begin
           $display("*** ERROR in P ***");
           $stop;
        end
        if(PCOUT != PCOUT) begin
           $display("*** ERROR in PCOUT ***");
           $stop;
        end
        if(CARRYOUT != CARRYOUT_exp) begin
           $display("*** ERROR in CARRYOUT ***");
           $stop;
        end
        if(CARRYOUTF != CARRYOUTF_exp) begin
           $display("*** ERROR in CARRYOUTF ***");
           $stop;
        end
        $display("*** Path 3 works correctly! ***");
        $stop;

        //check dsp path 4
        OPMODE = 8'b10100111;
        A = 5;
        B = 6;
        PCIN = 3000;
        BCOUT_exp = 'h6;
        M_exp = 'h1e;
        P_exp = 'hfe6fffec0bb1;
        PCOUT_exp = P_exp;
        CARRYOUT_exp = 1;
        CARRYOUTF_exp = CARRYOUT_exp;
        repeat(3) @(negedge clk);
        if(BCOUT != BCOUT_exp) begin
           $display("*** ERROR in BCOUT ***");
           $stop;
        end
        if(M != M_exp) begin
           $display("*** ERROR in M ***");
           $stop;
        end
        if(P != P) begin
           $display("*** ERROR in P ***");
           $stop;
        end
        if(PCOUT != PCOUT) begin
           $display("*** ERROR in PCOUT ***");
           $stop;
        end
        if(CARRYOUT != CARRYOUT_exp) begin
           $display("*** ERROR in CARRYOUT ***");
           $stop;
        end
        if(CARRYOUTF != CARRYOUTF_exp) begin
           $display("*** ERROR in CARRYOUTF ***");
           $stop;
        end
        $display("*** Path 4 works correctly! ***");
        $stop;
    end

endmodule
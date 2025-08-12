module circuit6_tb();
    reg d, clk, en, aln, adn, sln, sd, lat;
    wire q_dut;

    circuit_6 dut(d, clk, en, aln, adn, sln, sd, lat, q_dut);

    initial begin
        clk = 0;
        forever
            #1 clk = ~clk;
    end

    initial begin
        aln = 0;
        @(negedge clk);
        aln = 1;
        lat = 0;
        repeat(10) begin
            d = $random; 
            en = $random; 
            adn = $random; 
            sln =$random; 
            sd = $random;
            @(negedge clk);
        end
        lat = 1;
        repeat(10) begin
            d = $random; 
            en = $random; 
            adn = $random; 
            sln =$random; 
            sd = $random;
            @(negedge clk);
        end
        $stop;
    end

endmodule


module circuit_4(input clk, rstn, output [3:0] out);
    wire q0, q1, q2, q3;
    wire q_bar0, q_bar1, q_bar2, q_bar3;
    wire d0, d1, d2, d3;

    assign d0 = q_bar0;
    assign d1 = q_bar1;
    assign d2 = q_bar2;
    assign d3 = q_bar3;

    circuit_5b ff0(d0, rstn, clk, q0, q_bar0);
    circuit_5b ff1(d1, rstn, q0, q1, q_bar1);
    circuit_5b ff2(d2, rstn, q1, q2, q_bar2);
    circuit_5b ff3(d3, rstn, q2, q3, q_bar3);

    assign out = {q3, q2, q1, q0};

endmodule


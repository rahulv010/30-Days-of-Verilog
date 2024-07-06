//Shift Register (SIPO)

module flipflop (D,clk,Q);
  input D,clk;
  output reg Q;
  always @ (posedge clk) begin
    Q <= D;
  end
endmodule

module register (D,clk,Q);
input D,clk;
output reg [3:0] Q;
flipflop f0 (D,clk,Q[0]);
flipflop f1 (Q[0],clk,Q[1]);
flipflop f2 (Q[1],clk,Q[2]);
flipflop f3 (Q[2],clk,Q[3]);
endmodule

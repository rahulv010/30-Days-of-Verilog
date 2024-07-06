//Shift Register (PIPO)
module flipflop (D,clk,Q);
  input D,clk;
  output Q;
  reg Q=0;
  always @ (posedge clk) begin
    Q <= D;
  end
endmodule

module register(D,clk,Q);
  input [3:0] D;
  input clk;
  output [3:0] Q;
  wire h,i,j;
  flipflop f0 (D[0],clk,Q[0]);
  flipflop f1 (D[1],clk,Q[1]);
  flipflop f2 (D[2],clk,Q[2]);
  flipflop f3 (D[3],clk,Q[3]);
endmodule
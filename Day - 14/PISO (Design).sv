//Shift Register (PISO)
module flipflop (D,clk,Q);
  input D,clk;
  output Q;
  reg Q=0;
  always @ (posedge clk) begin
    Q <= D;
  end
endmodule

module mux (a,b,s,y);
  input a,b,s;
  output reg y;
  assign y=(~s&b)|(s&a);
endmodule

module register(D,s,clk,Q,r);
  input [3:0] D;
  input clk,s;
  output [3:0] Q;
  output r;
  wire h,i,j;
  flipflop f0 (D[0],clk,Q[0]);
  mux m0 (Q[0],D[1],s,h);
  flipflop f1 (h,clk,Q[1]);
  mux m1 (Q[1],D[2],s,i);
  flipflop f2 (i,clk,Q[2]);
  mux m2 (Q[2],D[3],s,j);
  flipflop f3 (j,clk,Q[3]);
  assign r = Q[3];
endmodule
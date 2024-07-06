//Shift Register (SISO)
module flipflop (D,clk,Q);
  input D,clk;
  output reg Q;
  always @ (posedge clk) begin
    Q <= D;
  end
endmodule

module register (D,clk,Q);
  input D,clk;
  output Q;
  wire x,y,z;
  flipflop f0 (D,clk,x);
  flipflop f1 (x,clk,y);
  flipflop f2 (y,clk,z);
  flipflop f3 (z,clk,Q);
endmodule

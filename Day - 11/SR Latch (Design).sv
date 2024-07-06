//SR Latch
module latch(SR,Q,Qb);
  input [1:0] SR;
  output Q,Qb;
  nor n0 (Q,SR[0],Qb);
  nor n1 (Qb,SR[1],Q);
endmodule
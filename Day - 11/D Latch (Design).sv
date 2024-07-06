//D Latch
module latch(D,E,Q,Qb);
  input D,E;
  output Q,Qb;
  wire x,y,z;
  not not0 (x,D);
  and a0 (y,E,x);
  and a1 (z,E,D);
  nor n0 (Q,y,Qb);
  nor n1 (Qb,z,Q);
endmodule
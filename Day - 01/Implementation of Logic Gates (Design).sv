// Implementation of Logic Gates
module gates(a,b,y);
  input a,b;
  output reg [7:0] y;
  
  or o1 (y[0],a,b);
  and a1 (y[1],a,b);
  nor no1 (y[2],a,b);
  nand na1 (y[3],a,b);
  xor xo1 (y[4],a,b);
  xnor xno1 (y[5],a,b);
  not not1 (y[6],b);
  
endmodule
  


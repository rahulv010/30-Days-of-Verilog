//Factorial
module factorial (a,x);
  input [1:0] a;
  output [2:0] x;
  assign x[2] = a[1]&a[0];
  assign x[1] = a[1];
  assign x[0] = (~a[1])&a[0];
endmodule

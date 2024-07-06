//Decimal To BCD Encoder 
module encoder(a,b);
  input [9:0] a;
  output [3:0] b;
  assign b[0] = a[9]|a[7]|a[5]|a[3]|a[1];
  assign b[1] = a[7]|a[6]|a[3]|a[2];
  assign b[2] = a[7]|a[6]|a[5]|a[4];
  assign b[3] = a[9]|a[8];
endmodule
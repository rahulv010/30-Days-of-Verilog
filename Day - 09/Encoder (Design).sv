//Encoder 4:2
module encoder(a,b);
  input [3:0] a;
  output [1:0] b;
  assign b[0] = a[3]|a[1];
  assign b[1] = a[3]|a[2];
endmodule

module demux(a,b,c,d,e,f,g,h,i,j);
  input a;
  input [2:0] b;
  output c,d,e,f,g,h,i,j;
  assign c = a&~b[0]&~b[1]&~b[2];
  assign d = a&b[0]&~b[1]&~b[2];
  assign e = a&~b[0]&b[1]&~b[2];
  assign f = a&b[0]&b[1]&~b[2];
  assign g = a&~b[0]&~b[1]&b[2];
  assign h = a&b[0]&~b[1]&b[2];
  assign i = a&~b[0]&b[1]&b[2];
  assign j = a&b[0]&b[1]&b[2];
endmodule
  
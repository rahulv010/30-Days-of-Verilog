// Full Subtractor
module fullsubtractor(a,b,Bin,d,Bout);
  input a,b,Bin;
  output d,Bout;
  assign d = a^b^Bin;
  assign Bout = ((~a)&Bin)|(b&Bin)|((~a)&b);
endmodule
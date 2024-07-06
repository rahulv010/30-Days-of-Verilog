// Half Subtractor
module halfsubtractor (a,b,d,B);
  input a,b;
  output d,B;
  assign d = a^b;
  assign B = ((~a)&b);
endmodule
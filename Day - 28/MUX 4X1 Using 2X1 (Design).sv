//Multiplexer 4:1
module mux (a,b,s,c);
  input a,b,s;
  output c;
  assign c = (~s&a)|(s&b);
endmodule

module mux2(a,b,d,e,r,s,c);
  input a,b,d,e,r,s;
  output c;
  wire x,y;
  mux m1 (a,b,s,x);
  mux m2 (d,e,s,y);
  mux m3 (x,y,r,c);
endmodule
  
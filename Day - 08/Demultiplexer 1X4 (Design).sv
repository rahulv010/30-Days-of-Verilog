module demux(a,s,c,d);
  input a,s;
  output c,d;
  not no (x,s);
  and a0 (c,x,a);
  and a1 (d,s,a);
endmodule
  
//Binary To Gray Code
module bg(b0,b1,b2,b3,g0,g1,g2,g3);
  input b0,b1,b2,b3;
  output g0,g1,g2,g3;
  assign g3 = b3;
  assign g2 = b2^b3;
  assign g1 = b1^b2;
  assign g0 = b0^b1;
endmodule
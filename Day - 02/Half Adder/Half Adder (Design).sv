// Half Adder
module adder(a,b,s,c);
  input a,b;
  output s,c;
  assign s = a^b;
  assign c = a&b;
endmodule

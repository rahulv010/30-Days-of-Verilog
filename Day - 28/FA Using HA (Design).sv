//Full Adder Using Half Adders
module half(a,b,s,c);
  input a,b;
  output s,c;
  assign s = a^b;
  assign c = a&b;
endmodule

module full(a,b,cin,s,cout);
  input a,b,cin;
  output s,cout;
  wire x,y,z;
  half h1(a,b,x,y);
  half h2(x,cin,s,z);
  or o1(cout,y,z);
endmodule
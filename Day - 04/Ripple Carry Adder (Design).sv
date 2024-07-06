//Ripple Carry Adder
module adder(a,b,Cin,s,Cout);
  input a,b,Cin;
  output s,Cout;
  assign s = a^b^Cin;
  assign Cout = (a&b)|((a^b)&Cin);
endmodule
module ripple(a,b,Cin,s,Cout);
  input [3:0] a;
  input [3:0] b;
  input Cin;
  output [3:0] s;
  output Cout;
  wire x,y,z;
  adder ad0(a[0],b[0],Cin,s[0],x);
  adder ad1(a[1],b[1],x,s[1],y);
  adder ad2(a[2],b[2],y,s[2],z);
  adder ad3(a[3],b[3],z,s[3],Cout);
endmodule
  
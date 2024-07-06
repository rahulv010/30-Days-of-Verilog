//Multiplexer 4:1
module mux (a,b,c,d,r,s,y);
  input a,b,c,d,r,s;
  output y;
  assign y = (a&~r&~s)|(b&~r&s)|(c&r&~s)|(d&r&s);
endmodule
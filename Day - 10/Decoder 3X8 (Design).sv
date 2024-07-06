//Decoder 3:8
module decoder(a,b,c,e,y);
  input a,b,c,e;
  output [7:0] y;
  assign y[0] = e&~a&~b&~c;
  assign y[1] = e&~a&~b&c;
  assign y[2] = e&~a&b&~c;
  assign y[3] = e&~a&b&c;
  assign y[4] = e&a&~b&~c;
  assign y[5] = e&a&~b&c;
  assign y[6] = e&a&b&~c;
  assign y[7] = e&a&b&c;
endmodule
  
//Multiplexer 2:1
module mux (a,b,s,c);
  input a,b,s;
  output c;
  reg c;
  always @ (a or b or s) begin
    if (s==0) begin
      c = a; end
     else begin
       c = b; end
  end
endmodule  
//Multiplexer 4:1
module mux_tb;
  reg a1,b1,c1,d1,r1,s1;
  wire y1;
  mux mux_tb(.a(a1),.b(b1),.c(c1),.d(d1),.r(r1),.s(s1),.y(y1));
  initial begin
    $dumpfile("Multiplexer2.vcd");
    $dumpvars(1);
    a1 = 1'b1; b1 = 1'b1; c1 = 1'b1; d1 = 1'b1;
    r1 = 1'b0; s1 = 1'b0;
    #1 $display("Input : %b %b %b %b , Select : %b %b , Output : %b",a1,b1,c1,d1,r1,s1,y1);
    r1 = 1'b0; s1 = 1'b1;
    #1 $display("Input : %b %b %b %b , Select : %b %b , Output : %b",a1,b1,c1,d1,r1,s1,y1);
    r1 = 1'b1; s1 = 1'b0;
    #1 $display("Input : %b %b %b %b , Select : %b %b , Output : %b",a1,b1,c1,d1,r1,s1,y1);
    r1 = 1'b1; s1 = 1'b1;
    #1 $display("Input : %b %b %b %b , Select : %b %b , Output : %b",a1,b1,c1,d1,r1,s1,y1);
  end
endmodule
  
  

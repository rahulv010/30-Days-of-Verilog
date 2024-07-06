//Multiplexer 4:1 using 2:1 mux
module mux_tb;
  reg a1,b1,d1,e1,r1,s1;
  wire c1;
  mux2 DUT(.a(a1),.b(b1),.d(d1),.e(e1),.r(r1),.s(s1),.c(c1));
  initial begin
    $dumpfile("Multiplexer.vcd");
     $dumpvars(1);
    a1 = 1'b0; b1 = 1'b1; d1 = 1'b0; e1 = 1'b1; 
    s1 = 1'b0; r1 = 1'b0; 
    #1 $display("A : %b , B : %b , C : %b , D : %b , Select : %b %b, Output : %b",a1,b1,d1,e1,r1,s1,c1);
    s1 = 1'b1; r1 = 1'b0;
    #1 $display("A : %b , B : %b , C : %b , D : %b , Select : %b %b, Output : %b",a1,b1,d1,e1,r1,s1,c1);
    s1 = 1'b0; r1 = 1'b1;
    #1 $display("A : %b , B : %b , C : %b , D : %b , Select : %b %b, Output : %b",a1,b1,d1,e1,r1,s1,c1);
    s1 = 1'b1; r1 = 1'b1;
    #1 $display("A : %b , B : %b , C : %b , D : %b , Select : %b %b, Output : %b",a1,b1,d1,e1,r1,s1,c1);
  end
endmodule
    
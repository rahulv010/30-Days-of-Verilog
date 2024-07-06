//Multiplexer 2:1
module mux_tb;
  reg a1,b1,s1;
  wire c1;
  mux mux_tb(.a(a1),.b(b1),.s(s1),.c(c1));
  initial begin
    $dumpfile("Multiplexer.vcd");
     $dumpvars(1);
    a1 = 1'b0; b1 = 1'b0;
    s1 = 1'b0;
    #1 $display("A : %b , B : %b , Select : %b , Output : %b",a1,b1,s1,c1);
    s1 = 1'b1;
    #1 $display("A : %b , B : %b , Select : %b , Output : %b",a1,b1,s1,c1);
    a1 = 1'b0; b1 = 1'b1;
    s1 = 1'b0;
    #1 $display("A : %b , B : %b , Select : %b , Output : %b",a1,b1,s1,c1);
    s1 = 1'b1;
    #1 $display("A : %b , B : %b , Select : %b , Output : %b",a1,b1,s1,c1);
    a1 = 1'b1; b1 = 1'b0;
    s1 = 1'b0;
    #1 $display("A : %b , B : %b , Select : %b , Output : %b",a1,b1,s1,c1);
    s1 = 1'b1;
    #1 $display("A : %b , B : %b , Select : %b , Output : %b",a1,b1,s1,c1);
    a1 = 1'b1; b1 = 1'b1;
    s1 = 1'b0;
    #1 $display("A : %b , B : %b , Select : %b , Output : %b",a1,b1,s1,c1);
    s1 = 1'b1;
    #1 $display("A : %b , B : %b , Select : %b , Output : %b",a1,b1,s1,c1);
  end
endmodule
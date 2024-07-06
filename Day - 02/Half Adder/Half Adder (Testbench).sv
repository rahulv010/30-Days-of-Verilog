// Half Adder
module adder_tb;
  reg a,b;
  reg s,c;
  adder adder_tb(.a(a),.b(b),.s(s),.c(c));
  initial begin
    $dumpfile("Adders.vcd");
    $dumpvars(1);
    a = 1'b0; b = 1'b0;
    #2 $display("A : %b  B : %b  Carry : %b  Sum : %b",a,b,c,s);
    a = 1'b0; b = 1'b1;
    #2 $display("A : %b  B : %b  Carry : %b  Sum : %b",a,b,c,s);
    a = 1'b1; b = 1'b0;
    #2 $display("A : %b  B : %b  Carry : %b  Sum : %b",a,b,c,s);
    a = 1'b1; b = 1'b1;
    #2 $display("A : %b  B : %b  Carry : %b  Sum : %b",a,b,c,s); 
  end
endmodule
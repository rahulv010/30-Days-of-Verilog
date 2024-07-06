//Factorial
module factorial_tb;
  reg [1:0] a1;
  reg [2:0] x1;
  factorial factorial_tb(.a(a1),.x(x1));
  initial begin
    $dumpfile("Factorial.vcd");
    $dumpvars(1);
    a1 = 2'b00;
    #1 $display("A : %b  Factorial : %b",a1,x1);
    a1 = 2'b01;
    #1 $display("A : %b  Factorial : %b",a1,x1);
    a1 = 2'b10;
    #1 $display("A : %b  Factorial : %b",a1,x1);
    a1 = 2'b11;
    #1 $display("A : %b  Factorial : %b",a1,x1);
  end
endmodule
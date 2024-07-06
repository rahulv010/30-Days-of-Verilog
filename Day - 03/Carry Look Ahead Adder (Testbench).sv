//CLA Adder
module adder_tb;
  reg [3:0] a1,b1,g1,p1,s1,c1;
  reg d1;
  
  cla adder_tb(.a(a1),.b(b1),.d(d1),.s(s1),.c(c1));
  initial begin
    $dumpfile("Ripple Carry Adder.vcd");
    $dumpvars(1);
    a1 = 4'b1110; b1 = 4'b1100; d1 = 1'b0;
    #1 $display("Sum : %b , Cout = %b",s1,c1[3]);
  end
endmodule
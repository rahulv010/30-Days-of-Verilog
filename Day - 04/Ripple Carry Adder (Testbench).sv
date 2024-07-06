//Ripple Carry Adder
module adder_tb;
  reg [3:0] a1;
  reg [3:0] b1;
  reg [3:0] s1;
  reg Cin1;
  wire Cout1;
  ripple DUT(.a(a1),.b(b1),.Cin(Cin1),.s(s1),.Cout(Cout1));
  initial begin
    $dumpfile("Ripple Carry Adder.vcd");
    $dumpvars(1);
    a1 = 4'b1010; b1 = 4'b1101; Cin1 = 1'b0;
    #1 $display("Sum : %b , Cout = %b",s1,Cout1);
  end
endmodule
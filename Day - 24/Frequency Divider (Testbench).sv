//Frequency Divider
module flipflop_tb;
  reg [1:0] JK1;
  reg clk1;
  reg Q1,x1,y1,z1;
  freq DUT(.JK(JK1),.clk(clk1),.Q(Q1),.x(x1),.y(y1),.z(z1));
  initial begin
    clk1 = 0;
    forever #1 clk1 = ~clk1;
  end
  initial begin
    $dumpfile("Frequency Divider.vcd");
    $dumpvars(1);
    JK1 = 2'b01;
    #2
    JK1 = 2'b11;
    #50
    $finish;
  end
endmodule
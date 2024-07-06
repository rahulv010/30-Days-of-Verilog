//Bidirectional Shift Register
module register_tb;
  reg d1,clk1,dir1;
  wire [3:0] out1;

  register put (.d(d1),.clk(clk1),.dir(dir1),.out(out1));

  initial begin
    clk1 = 0;
    forever #2 clk1 = ~clk1;
  end
  
  initial begin
    $dumpfile("Bidirectional Shift Register.vcd");
    $dumpvars(1);
    d1 = 1; dir1 = 0;
    #4 $display("Time : %0d, d = %b, dir = %b, out = %b", $time, d1, dir1, out1);
    d1 = 0; dir1 = 0; 
    #4 $display("Time : %0d, d = %b, dir = %b, out = %b", $time, d1, dir1, out1);
    d1 = 1; dir1 = 0;
    #4 $display("Time : %0d, d = %b, dir = %b, out = %b", $time, d1, dir1, out1);
    d1 = 1; dir1 = 0;
    #4 $display("Time : %0d, d = %b, dir = %b, out = %b", $time, d1, dir1, out1);
    dir1 = 1;
    #4 $display("Time : %0d, d = %b, dir = %b, out = %b", $time, d1, dir1, out1);
    dir1 = 1; 
    #4 $display("Time : %0d, d = %b, dir = %b, out = %b", $time, d1, dir1, out1);
    dir1 = 1;
    #4 $display("Time : %0d, d = %b, dir = %b, out = %b", $time, d1, dir1, out1);
    dir1 = 1;
    #4 $display("Time : %0d, d = %b, dir = %b, out = %b", $time, d1, dir1, out1);
    #50 $finish;
  end
endmodule

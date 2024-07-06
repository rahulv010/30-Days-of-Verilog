//Mod 5 Counter
module counter_tb;
  reg t1,clk1;
  reg [2:0] q1,c1;

  counter put (.t(t1),.clk(clk1),.q(q1));

  initial begin
    clk1 = 0;
    forever #2 clk1 = ~clk1;
  end
  
  initial begin
    $dumpfile("Mod 5 Counter.vcd");
    $dumpvars(1);
    t1 = 1;
    #4 $display("Time : %0d, t = %b, out = %b", $time, 1'b1, q1);
    #4 $display("Time : %0d, t = %b, out = %b", $time, 1'b1, q1);
    #4 $display("Time : %0d, t = %b, out = %b", $time, 1'b1, q1);
    #4 $display("Time : %0d, t = %b, out = %b", $time, 1'b1, q1);
    #4 $display("Time : %0d, t = %b, out = %b", $time, 1'b1, q1);
    #4 $display("Time : %0d, t = %b, out = %b", $time, 1'b1, q1);
    #4 $display("Time : %0d, t = %b, out = %b", $time, 1'b1, q1);
    #4 $display("Time : %0d, t = %b, out = %b", $time, 1'b1, q1);
    #4 $display("Time : %0d, t = %b, out = %b", $time, 1'b1, q1);
    #4 $display("Time : %0d, t = %b, out = %b", $time, 1'b1, q1);
    #4 $display("Time : %0d, t = %b, out = %b", $time, 1'b1, q1);
    #4 $display("Time : %0d, t = %b, out = %b", $time, 1'b1, q1);
    #4 $display("Time : %0d, t = %b, out = %b", $time, 1'b1, q1);
    #4 $display("Time : %0d, t = %b, out = %b", $time, 1'b1, q1);
    #4 $display("Time : %0d, t = %b, out = %b", $time, 1'b1, q1);
    #50 $finish;
  end
endmodule

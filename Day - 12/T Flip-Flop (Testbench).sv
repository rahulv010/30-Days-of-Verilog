//T Flip-Flop
module flipflop_tb;
  reg T1;
  reg clk1;
  wire Q1,Qb1;
  flipflop flipflop_tb(.T(T1),.clk(clk1),.Q(Q1),.Qb(Qb1));
  
  initial begin
   clk1 = 1'b0;
   forever #2 clk1 = ~clk1;
  end
  
  initial begin
    $dumpfile("T Flip-Flop.vcd");
    $dumpvars(1);
    T1 = 1'b0;
    #5 $display("T : %b Q : %b  Q' : %b",T1,Q1,Qb1);
    T1 = 1'b1;
    #5 $display("T : %b Q : %b  Q' : %b",T1,Q1,Qb1);
    #5 $finish;
  end
endmodule
  
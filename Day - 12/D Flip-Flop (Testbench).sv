//D Flip-Flop
module flipflop_tb;
  reg D1;
  reg clk1;
  wire Q1,Qb1;
  flipflop DUT(.D(D1),.clk(clk1),.Q(Q1),.Qb(Qb1));
  
  initial begin
   clk1 = 1'b0;
   forever begin
     #2 clk1 = ~clk1;end
  end
  
  initial begin
    $dumpfile("D Flip-Flop.vcd");
    $dumpvars(1);
    D1 = 1'b0;
    #5 $display("D : %b Q : %b  Q' : %b",D1,Q1,Qb1);
    D1 = 1'b1;
    #5 $display("D : %b Q : %b  Q' : %b",D1,Q1,Qb1);
    $finish;
  end
endmodule
  
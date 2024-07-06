//JK Flip-Flop
module flipflop_tb;
  reg [1:0] JK1;
  reg clk1;
  wire Q1,Qb1;
  flipflop flipflop_tb(.JK(JK1),.clk(clk1),.Q(Q1),.Qb(Qb1));
  
  initial begin
   clk1 = 1'b0;
   forever #2 clk1 = ~clk1;
  end
  
  initial begin
    $dumpfile("JK Flip-Flop.vcd");
    $dumpvars(1);
    JK1 = 2'b00;
    #5 $display("J : %b K : %b  Q : %b  Q' : %b",JK1[1],JK1[0],Q1,Qb1);
    JK1 = 2'b01;
    #5 $display("J : %b K : %b  Q : %b  Q' : %b",JK1[1],JK1[0],Q1,Qb1);
    JK1 = 2'b10;
    #5 $display("J : %b K : %b  Q : %b  Q' : %b",JK1[1],JK1[0],Q1,Qb1);
    JK1 = 2'b11;
    #5 $display("J : %b K : %b  Q : %b  Q' : %b",JK1[1],JK1[0],Q1,Qb1);
    JK1 = 2'b00;
    #5 $display("J : %b K : %b  Q : %b  Q' : %b",JK1[1],JK1[0],Q1,Qb1);
    JK1 = 2'b11;
    #5 $display("J : %b K : %b  Q : %b  Q' : %b",JK1[1],JK1[0],Q1,Qb1);
    #5 $finish;
  end
endmodule
  
//SR Flip-Flop
module flipflop_tb;
  reg [1:0] SR1;
  reg clk1;
  wire Q1,Qb1;
  flipflop flipflop_tb(.SR(SR1),.clk(clk1),.Q(Q1),.Qb(Qb1));
  
  initial begin
   clk1 = 1'b0;
   forever #2 clk1 = ~clk1;
  end
  
  initial begin
    $dumpfile("SR Flip-Flop.vcd");
    $dumpvars(1);
    SR1 = 2'b00;
    #5 $display("J : %b K : %b  Q : %b  Q' : %b",SR1[1],SR1[0],Q1,Qb1);
    SR1 = 2'b01;
    #5 $display("J : %b K : %b  Q : %b  Q' : %b",SR1[1],SR1[0],Q1,Qb1);
    SR1 = 2'b10;
    #5 $display("J : %b K : %b  Q : %b  Q' : %b",SR1[1],SR1[0],Q1,Qb1);
    SR1 = 2'b11;
    #5 $display("J : %b K : %b  Q : %b  Q' : %b",SR1[1],SR1[0],Q1,Qb1);
    SR1 = 2'b00;
    #5 $display("J : %b K : %b  Q : %b  Q' : %b",SR1[1],SR1[0],Q1,Qb1);
    SR1 = 2'b10;
    #5 $display("J : %b K : %b  Q : %b  Q' : %b",SR1[1],SR1[0],Q1,Qb1);
    SR1 = 2'b00;
    #5 $display("J : %b K : %b  Q : %b  Q' : %b",SR1[1],SR1[0],Q1,Qb1);
    #5 $finish;
  end
endmodule
  
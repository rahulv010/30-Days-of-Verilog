//SR Latch
module latch_tb;
  reg [1:0] SR1;
  reg Q1,Qb1;
  latch latch_tb(.SR(SR1),.Q(Q1),.Qb(Qb1));
  initial begin
    $dumpfile("latches.vcd");
    $dumpvars(1);
    SR1 = 2'b00;
    #1 $display("S : %b  R : %b  Q : %b  Qb : %b",SR1[1],SR1[0],Q1,Qb1);
    SR1 = 2'b01;
    #1 $display("S : %b  R : %b  Q : %b  Qb : %b",SR1[1],SR1[0],Q1,Qb1);
    SR1 = 2'b10;
    #1 $display("S : %b  R : %b  Q : %b  Qb : %b",SR1[1],SR1[0],Q1,Qb1);
    SR1 = 2'b11;
    #1 $display("S : %b  R : %b  Q : %b  Qb : %b",SR1[1],SR1[0],Q1,Qb1);
  end
endmodule
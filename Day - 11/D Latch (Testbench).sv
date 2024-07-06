//D Latch
module latch_tb;
  reg D1,E1,Q1,Qb1;
  latch latch_tb(.D(D1),.E(E1),.Q(Q1),.Qb(Qb1));
  initial begin
    $dumpfile("latches.vcd");
    $dumpvars(1);
    E1 = 1'b0; D1 = 1'b0;
    #1 $display("E : %b  D : %b  Q : %b  Qb : %b",E1,D1,Q1,Qb1);
    E1 = 1'b0; D1 = 1'b1;
    #1 $display("E : %b  D : %b  Q : %b  Qb : %b",E1,D1,Q1,Qb1);
    E1 = 1'b1; D1 = 1'b0;
    #1 $display("E : %b  D : %b  Q : %b  Qb : %b",E1,D1,Q1,Qb1);
    E1 = 1'b1; D1 = 1'b1;
    #1 $display("E : %b  D : %b  Q : %b  Qb : %b",E1,D1,Q1,Qb1);
  end
endmodule
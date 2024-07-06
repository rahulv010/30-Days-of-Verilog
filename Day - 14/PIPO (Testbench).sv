//Shift Register (PIPO)
module flipflop_tb;
  reg [3:0] D1,Q1;
  reg clk1;
  register DUT(.D(D1),.clk(clk1),.Q(Q1));
  
  initial begin
   clk1 = 1'b0;
   forever #2 clk1 = ~clk1;
  end
  
  initial begin
    $dumpfile("Shift Register.vcd");
    $dumpvars(1);
    D1 = 4'b1001;
    #4 $display("Time : %0d  D : %b  Q0 : %b  Q1 : %b  Q2 : %b  Q3 : %b",$time,D1,Q1[0],Q1[1],Q1[2],Q1[3]);
    $finish;
  end
endmodule


  
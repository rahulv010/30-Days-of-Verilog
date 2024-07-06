//Shift Register (SISO)
module flipflop_tb;
  reg D1,clk1;
  wire Q1;
  register DUT(.D(D1),.clk(clk1),.Q(Q1));
  initial begin 
    clk1 = 1'b0;
    forever #2 clk1 = ~clk1;
  end
  initial begin
    $dumpfile("Shift Register.vcd");
    $dumpvars (1);
    D1= 1'b1;
    #4 $display("Time = %0d, D = %b, Q = %b",$time,D1,Q1);
    D1= 1'b1;
    #4 $display("Time = %0d, D = %b, Q = %b",$time,D1,Q1);
    D1= 1'b0;
    #4 $display("Time = %0d, D = %b, Q = %b",$time,D1,Q1);
    D1= 1'b1;
    #4 $display("Time = %0d, D = %b, Q = %b",$time,D1,Q1);
    D1= 1'b0;
    #4 $display("Time = %0d, D = %b, Q = %b",$time,D1,Q1);
    $finish;
  end
endmodule


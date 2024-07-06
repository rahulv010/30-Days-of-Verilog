//Shift Register (PISO)
module flipflop_tb;
  reg [3:0] D1,Q1;
  reg clk1,s1,r1;
  register DUT(.D(D1),.clk(clk1),.s(s1),.Q(Q1),.r(r1));
  
  initial begin
   clk1 = 1'b0;
   forever #2 clk1 = ~clk1;
  end
  initial begin
    $dumpfile("Shift Register.vcd");
    $dumpvars(1);
    s1 = 0; D1 = 4'b1001; //Load
    #2;
    s1 = 1; //Shift
    #4 $display("Time : %0d , D : %b , Output : %b",$time,D1,r1);
    #4 $display("Time : %0d , D : %b , Output : %b",$time,D1,r1);
    #4 $display("Time : %0d , D : %b , Output : %b",$time,D1,r1);
    #4 $display("Time : %0d , D : %b , Output : %b",$time,D1,r1);
    $finish;
  end
endmodule


  
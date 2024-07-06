// Implementation of Logic Gates
module gates_tb;
  reg a1,b1;
  reg [7:0] y1;
  
  gates gates_tb(.a(a1),.b(b1),.y(y1));
  
  initial begin
    
    $dumpfile("Gates.vcd");
    $dumpvars(1);
    
    a1 = 1'b0; b1 = 1'b0;
    #2 $display("Time : %0d, OR : %b, AND : %b, NOR : %b, NAND : %b, XOR : %b, XNOR : %b, NOT : %b",$time,y1[0],y1[1],y1[2],y1[3],y1[4],y1[5],y1[6]);
    a1 = 1'b0; b1 = 1'b1;
    #2 $display("Time : %0d, OR : %b, AND : %b, NOR : %b, NAND : %b, XOR : %b, XNOR : %b, NOT : %b",$time,y1[0],y1[1],y1[2],y1[3],y1[4],y1[5],y1[6]);
    a1 = 1'b1; b1 = 1'b0;
    #2 $display("Time : %0d, OR : %b, AND : %b, NOR : %b, NAND : %b, XOR : %b, XNOR : %b, NOT : %b",$time,y1[0],y1[1],y1[2],y1[3],y1[4],y1[5],y1[6]);
    a1 = 1'b1; b1 = 1'b1;
    #2 $display("Time : %0d, OR : %b, AND : %b, NOR : %b, NAND : %b, XOR : %b, XNOR : %b, NOT : %b",$time,y1[0],y1[1],y1[2],y1[3],y1[4],y1[5],y1[6]);
    
  end
endmodule
    
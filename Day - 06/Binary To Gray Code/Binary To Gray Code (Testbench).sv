//Binary To Gray Code
module bg_tb;
  reg a1,b1,c1,d1;
  wire w1,x1,y1,z1;
  bg bg_tb(.b0(a1),.b1(b1),.b2(c1),.b3(d1),.g0(w1),.g1(x1),.g2(y1),.g3(z1));
  initial begin
    $dumpfile("Binary To Gray Code.vcd");
    $dumpvars(1);
    d1 = 1'b0; c1 = 1'b0; b1 = 1'b0; a1 = 1'b0;
    #1 $display("Binary : %b %b %b %b , Gray Code : %b %b %b %b",d1,c1,b1,a1,z1,y1,x1,w1);
    d1 = 1'b0; c1 = 1'b0; b1 = 1'b0; a1 = 1'b1;
    #1 $display("Binary : %b %b %b %b , Gray Code : %b %b %b %b",d1,c1,b1,a1,z1,y1,x1,w1);
    d1 = 1'b0; c1 = 1'b0; b1 = 1'b1; a1 = 1'b0;
    #1 $display("Binary : %b %b %b %b , Gray Code : %b %b %b %b",d1,c1,b1,a1,z1,y1,x1,w1);
    d1 = 1'b0; c1 = 1'b0; b1 = 1'b1; a1 = 1'b1;
    #1 $display("Binary : %b %b %b %b , Gray Code : %b %b %b %b",d1,c1,b1,a1,z1,y1,x1,w1);
    d1 = 1'b0; c1 = 1'b1; b1 = 1'b0; a1 = 1'b0;
    #1 $display("Binary : %b %b %b %b , Gray Code : %b %b %b %b",d1,c1,b1,a1,z1,y1,x1,w1);
    d1 = 1'b0; c1 = 1'b1; b1 = 1'b0; a1 = 1'b1;
    #1 $display("Binary : %b %b %b %b , Gray Code : %b %b %b %b",d1,c1,b1,a1,z1,y1,x1,w1);
    d1 = 1'b0; c1 = 1'b1; b1 = 1'b1; a1 = 1'b0;
    #1 $display("Binary : %b %b %b %b , Gray Code : %b %b %b %b",d1,c1,b1,a1,z1,y1,x1,w1);
    d1 = 1'b0; c1 = 1'b1; b1 = 1'b1; a1 = 1'b1;
    #1 $display("Binary : %b %b %b %b , Gray Code : %b %b %b %b",d1,c1,b1,a1,z1,y1,x1,w1);
    d1 = 1'b1; c1 = 1'b0; b1 = 1'b0; a1 = 1'b0;
    #1 $display("Binary : %b %b %b %b , Gray Code : %b %b %b %b",d1,c1,b1,a1,z1,y1,x1,w1);
    d1 = 1'b1; c1 = 1'b0; b1 = 1'b0; a1 = 1'b1;
    #1 $display("Binary : %b %b %b %b , Gray Code : %b %b %b %b",d1,c1,b1,a1,z1,y1,x1,w1);
    d1 = 1'b1; c1 = 1'b0; b1 = 1'b1; a1 = 1'b0;
    #1 $display("Binary : %b %b %b %b , Gray Code : %b %b %b %b",d1,c1,b1,a1,z1,y1,x1,w1);
    d1 = 1'b1; c1 = 1'b0; b1 = 1'b1; a1 = 1'b1;
    #1 $display("Binary : %b %b %b %b , Gray Code : %b %b %b %b",d1,c1,b1,a1,z1,y1,x1,w1);
    d1 = 1'b1; c1 = 1'b1; b1 = 1'b0; a1 = 1'b0;
    #1 $display("Binary : %b %b %b %b , Gray Code : %b %b %b %b",d1,c1,b1,a1,z1,y1,x1,w1);
    d1 = 1'b1; c1 = 1'b1; b1 = 1'b0; a1 = 1'b1;
    #1 $display("Binary : %b %b %b %b , Gray Code : %b %b %b %b",d1,c1,b1,a1,z1,y1,x1,w1);
    d1 = 1'b1; c1 = 1'b1; b1 = 1'b1; a1 = 1'b0;
    #1 $display("Binary : %b %b %b %b , Gray Code : %b %b %b %b",d1,c1,b1,a1,z1,y1,x1,w1);
    d1 = 1'b1; c1 = 1'b1; b1 = 1'b1; a1 = 1'b1; 
    #1 $display("Binary : %b %b %b %b , Gray Code : %b %b %b %b",d1,c1,b1,a1,z1,y1,x1,w1);
  end
endmodule
  
  

//Gray To Binary Code
module gb_tb;
  reg a1,b1,c1,d1;
  wire w1,x1,y1,z1;
  gb gb_tb(.g0(a1),.g1(b1),.g2(c1),.g3(d1),.b0(w1),.b1(x1),.b2(y1),.b3(z1));
  initial begin
    $dumpfile("Gray To Binary Code.vcd");
    $dumpvars(1);
    d1 = 1'b0; c1 = 1'b0; b1 = 1'b0; a1 = 1'b0;
    #1 $display("Gray Code : %b %b %b %b , Binary : %b %b %b %b",d1,c1,b1,a1,z1,y1,x1,w1);
    d1 = 1'b0; c1 = 1'b0; b1 = 1'b0; a1 = 1'b1;
    #1 $display("Gray Code : %b %b %b %b , Binary : %b %b %b %b",d1,c1,b1,a1,z1,y1,x1,w1);
    d1 = 1'b0; c1 = 1'b0; b1 = 1'b1; a1 = 1'b1;
    #1 $display("Gray Code : %b %b %b %b , Binary : %b %b %b %b",d1,c1,b1,a1,z1,y1,x1,w1);
    d1 = 1'b0; c1 = 1'b0; b1 = 1'b1; a1 = 1'b0;
    #1 $display("Gray Code : %b %b %b %b , Binary : %b %b %b %b",d1,c1,b1,a1,z1,y1,x1,w1);
    d1 = 1'b0; c1 = 1'b1; b1 = 1'b1; a1 = 1'b0;
    #1 $display("Gray Code : %b %b %b %b , Binary : %b %b %b %b",d1,c1,b1,a1,z1,y1,x1,w1);
    d1 = 1'b0; c1 = 1'b1; b1 = 1'b1; a1 = 1'b1;
    #1 $display("Gray Code : %b %b %b %b , Binary : %b %b %b %b",d1,c1,b1,a1,z1,y1,x1,w1);
    d1 = 1'b0; c1 = 1'b1; b1 = 1'b0; a1 = 1'b1;
    #1 $display("Gray Code : %b %b %b %b , Binary : %b %b %b %b",d1,c1,b1,a1,z1,y1,x1,w1);
    d1 = 1'b0; c1 = 1'b1; b1 = 1'b0; a1 = 1'b0;
    #1 $display("Gray Code : %b %b %b %b , Binary : %b %b %b %b",d1,c1,b1,a1,z1,y1,x1,w1);
    d1 = 1'b1; c1 = 1'b1; b1 = 1'b0; a1 = 1'b0;
    #1 $display("Gray Code : %b %b %b %b , Binary : %b %b %b %b",d1,c1,b1,a1,z1,y1,x1,w1);
    d1 = 1'b1; c1 = 1'b1; b1 = 1'b0; a1 = 1'b1;
    #1 $display("Gray Code : %b %b %b %b , Binary : %b %b %b %b",d1,c1,b1,a1,z1,y1,x1,w1);
    d1 = 1'b1; c1 = 1'b1; b1 = 1'b1; a1 = 1'b1;
    #1 $display("Gray Code : %b %b %b %b , Binary : %b %b %b %b",d1,c1,b1,a1,z1,y1,x1,w1);
    d1 = 1'b1; c1 = 1'b1; b1 = 1'b1; a1 = 1'b0;
    #1 $display("Gray Code : %b %b %b %b , Binary : %b %b %b %b",d1,c1,b1,a1,z1,y1,x1,w1);
    d1 = 1'b1; c1 = 1'b0; b1 = 1'b1; a1 = 1'b0;
    #1 $display("Gray Code : %b %b %b %b , Binary : %b %b %b %b",d1,c1,b1,a1,z1,y1,x1,w1);
    d1 = 1'b1; c1 = 1'b0; b1 = 1'b1; a1 = 1'b1;
    #1 $display("Gray Code : %b %b %b %b , Binary : %b %b %b %b",d1,c1,b1,a1,z1,y1,x1,w1);
    d1 = 1'b1; c1 = 1'b0; b1 = 1'b0; a1 = 1'b1;
    #1 $display("Gray Code : %b %b %b %b , Binary : %b %b %b %b",d1,c1,b1,a1,z1,y1,x1,w1);
    d1 = 1'b1; c1 = 1'b0; b1 = 1'b0; a1 = 1'b0; 
    #1 $display("Gray Code : %b %b %b %b , Binary : %b %b %b %b",d1,c1,b1,a1,z1,y1,x1,w1);
  end
endmodule
  
  

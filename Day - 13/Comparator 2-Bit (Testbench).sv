//Magnitude Comparator
module comparator_tb;
  reg [1:0] a1,b1;
  reg [15:0] x1,y1,z1;
  comp DUT(.a(a1),.b(b1),.x(x1),.y(y1),.z(z1));
  initial begin
    $dumpfile("Comparator.vcd");
    $dumpvars(1);
    a1 = 2'b00; b1 = 2'b00;
    #1 $display("A : %b  B : %b  A<B %b  A=B %b  A>B %b",a1,b1,x1[0],y1[0],z1[0]);
    a1 = 2'b00; b1 = 2'b01;
    #1 $display("A : %b  B : %b  A<B %b  A=B %b  A>B %b",a1,b1,x1[1],y1[1],z1[1]);
    a1 = 2'b00; b1 = 2'b10;
    #1 $display("A : %b  B : %b  A<B %b  A=B %b  A>B %b",a1,b1,x1[2],y1[2],z1[2]);
    a1 = 2'b00; b1 = 2'b11;
    #1 $display("A : %b  B : %b  A<B %b  A=B %b  A>B %b",a1,b1,x1[3],y1[3],z1[3]);
    a1 = 2'b01; b1 = 2'b00;
    #1 $display("A : %b  B : %b  A<B %b  A=B %b  A>B %b",a1,b1,x1[4],y1[4],z1[4]);
    a1 = 2'b01; b1 = 2'b01;
    #1 $display("A : %b  B : %b  A<B %b  A=B %b  A>B %b",a1,b1,x1[5],y1[5],z1[5]);
    a1 = 2'b01; b1 = 2'b10;
    #1 $display("A : %b  B : %b  A<B %b  A=B %b  A>B %b",a1,b1,x1[6],y1[6],z1[6]);
    a1 = 2'b01; b1 = 2'b11;
    #1 $display("A : %b  B : %b  A<B %b  A=B %b  A>B %b",a1,b1,x1[7],y1[7],z1[7]);
    a1 = 2'b10; b1 = 2'b00;
    #1 $display("A : %b  B : %b  A<B %b  A=B %b  A>B %b",a1,b1,x1[8],y1[8],z1[8]);
    a1 = 2'b10; b1 = 2'b01;
    #1 $display("A : %b  B : %b  A<B %b  A=B %b  A>B %b",a1,b1,x1[9],y1[9],z1[9]);
    a1 = 2'b10; b1 = 2'b10;
    #1 $display("A : %b  B : %b  A<B %b  A=B %b  A>B %b",a1,b1,x1[10],y1[10],z1[10]);
    a1 = 2'b10; b1 = 2'b11;
    #1 $display("A : %b  B : %b  A<B %b  A=B %b  A>B %b",a1,b1,x1[11],y1[11],z1[11]);
    a1 = 2'b11; b1 = 2'b00;
    #1 $display("A : %b  B : %b  A<B %b  A=B %b  A>B %b",a1,b1,x1[12],y1[12],z1[12]);
    a1 = 2'b11; b1 = 2'b01;
    #1 $display("A : %b  B : %b  A<B %b  A=B %b  A>B %b",a1,b1,x1[13],y1[13],z1[13]);
    a1 = 2'b11; b1 = 2'b10;
    #1 $display("A : %b  B : %b  A<B %b  A=B %b  A>B %b",a1,b1,x1[14],y1[14],z1[14]);
    a1 = 2'b11; b1 = 2'b11;
    #1 $display("A : %b  B : %b  A<B %b  A=B %b  A>B %b",a1,b1,x1[15],y1[15],z1[15]);
  end
endmodule
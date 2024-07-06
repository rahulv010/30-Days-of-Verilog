//Comparator
module comparator_tb;
  reg [1:0] a1,b1;
  wire x1,y1,z1;
  comparator comparator_tb(.a(a1),.b(b1),.x(x1),.y(y1),.z(z1));
  initial begin
    $dumpfile("Comparator.vcd");
    $dumpvars(1);
    a1 = 2'b00; b1 = 2'b00;
    #1 $display("A : %b  B : %b  A<B : %b  A=B : %b  A>B : %b",a1,b1,x1,y1,z1);
    a1 = 2'b00; b1 = 2'b01;
    #1 $display("A : %b  B : %b  A<B : %b  A=B : %b  A>B : %b",a1,b1,x1,y1,z1);
    a1 = 2'b00; b1 = 2'b10;
    #1 $display("A : %b  B : %b  A<B : %b  A=B : %b  A>B : %b",a1,b1,x1,y1,z1);
    a1 = 2'b00; b1 = 2'b11;
    #1 $display("A : %b  B : %b  A<B : %b  A=B : %b  A>B : %b",a1,b1,x1,y1,z1);
    a1 = 2'b01; b1 = 2'b00;
    #1 $display("A : %b  B : %b  A<B : %b  A=B : %b  A>B : %b",a1,b1,x1,y1,z1);
    a1 = 2'b01; b1 = 2'b01;
    #1 $display("A : %b  B : %b  A<B : %b  A=B : %b  A>B : %b",a1,b1,x1,y1,z1);
    a1 = 2'b01; b1 = 2'b10;
    #1 $display("A : %b  B : %b  A<B : %b  A=B : %b  A>B : %b",a1,b1,x1,y1,z1);
    a1 = 2'b01; b1 = 2'b11;
    #1 $display("A : %b  B : %b  A<B : %b  A=B : %b  A>B : %b",a1,b1,x1,y1,z1);
    a1 = 2'b10; b1 = 2'b00;
    #1 $display("A : %b  B : %b  A<B : %b  A=B : %b  A>B : %b",a1,b1,x1,y1,z1);
    a1 = 2'b10; b1 = 2'b01;
    #1 $display("A : %b  B : %b  A<B : %b  A=B : %b  A>B : %b",a1,b1,x1,y1,z1);
    a1 = 2'b10; b1 = 2'b10;
    #1 $display("A : %b  B : %b  A<B : %b  A=B : %b  A>B : %b",a1,b1,x1,y1,z1);
    a1 = 2'b10; b1 = 2'b11;
    #1 $display("A : %b  B : %b  A<B : %b  A=B : %b  A>B : %b",a1,b1,x1,y1,z1);
    a1 = 2'b11; b1 = 2'b00;
    #1 $display("A : %b  B : %b  A<B : %b  A=B : %b  A>B : %b",a1,b1,x1,y1,z1);
    a1 = 2'b11; b1 = 2'b01;
    #1 $display("A : %b  B : %b  A<B : %b  A=B : %b  A>B : %b",a1,b1,x1,y1,z1);
    a1 = 2'b11; b1 = 2'b10;
    #1 $display("A : %b  B : %b  A<B : %b  A=B : %b  A>B : %b",a1,b1,x1,y1,z1);
    a1 = 2'b11; b1 = 2'b11;
    #1 $display("A : %b  B : %b  A<B : %b  A=B : %b  A>B : %b",a1,b1,x1,y1,z1);
  end
endmodule
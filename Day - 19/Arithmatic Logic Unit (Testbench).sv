//Arithmatic Logic unit

module ALU_TB;
  reg [3:0] a1, b1;
  reg [2:0] s1;
  reg [3:0] y1;
  ALU ALU_TB (.a(a1),.b(b1),.s(s1),.y(y1));
  initial begin
    $dumpfile("ALU.vcd");
    $dumpvars (1);
    a1 = 1001; b1 = 1010;
    s1 = 000;
    #10 $display("A : %b  B : %b  S : %b  OUTPUT : %b",a1,b1,s1,y1);
    s1 = 001;
    #10 $display("A : %b  B : %b  S : %b  OUTPUT : %b",a1,b1,s1,y1);
    s1 = 010;
    #10 $display("A : %b  B : %b  S : %b  OUTPUT : %b",a1,b1,s1,y1);
    s1 = 011;
    #10 $display("A : %b  B : %b  S : %b  OUTPUT : %b",a1,b1,s1,y1);
    s1 = 100;
    #10 $display("A : %b  B : %b  S : %b  OUTPUT : %b",a1,b1,s1,y1);
    s1 = 101;
    #10 $display("A : %b  B : %b  S : %b  OUTPUT : %b",a1,b1,s1,y1);
    s1 = 110;
    #10 $display("A : %b  B : %b  S : %b  OUTPUT : %b",a1,b1,s1,y1);
    s1 = 111;
    #10 $display("A : %b  B : %b  S : %b  OUTPUT : %b",a1,b1,s1,y1);
  end
endmodule

// Half Adder
module adder_tb;
  reg a,b,cin;
  reg s,cout;
  adder adder_tb(.a(a),.b(b),.cin(cin),.s(s),.cout(cout));
  initial begin
    $dumpfile("Adders.vcd");
    $dumpvars(1);
    a = 1'b0; b = 1'b0; cin = 1'b0;
    #2 $display("A : %b  B : %b  Cin : %b  Cout : %b  Sum : %b",a,b,cin,cout,s);
    a = 1'b0; b = 1'b0; cin = 1'b1;
    #2 $display("A : %b  B : %b  Cin : %b  Cout : %b  Sum : %b",a,b,cin,cout,s);
    a = 1'b0; b = 1'b1; cin = 1'b0;
    #2 $display("A : %b  B : %b  Cin : %b  Cout : %b  Sum : %b",a,b,cin,cout,s);
    a = 1'b0; b = 1'b1; cin = 1'b1;
    #2 $display("A : %b  B : %b  Cin : %b  Cout : %b  Sum : %b",a,b,cin,cout,s);
    a = 1'b1; b = 1'b0; cin = 1'b0;
    #2 $display("A : %b  B : %b  Cin : %b  Cout : %b  Sum : %b",a,b,cin,cout,s);
    a = 1'b1; b = 1'b0; cin = 1'b1;
    #2 $display("A : %b  B : %b  Cin : %b  Cout : %b  Sum : %b",a,b,cin,cout,s);
    a = 1'b1; b = 1'b1; cin = 1'b0;
    #2 $display("A : %b  B : %b  Cin : %b  Cout : %b  Sum : %b",a,b,cin,cout,s);
    a = 1'b1; b = 1'b1; cin = 1'b1;
    #2 $display("A : %b  B : %b  Cin : %b  Cout : %b  Sum : %b",a,b,cin,cout,s);
  end
endmodule
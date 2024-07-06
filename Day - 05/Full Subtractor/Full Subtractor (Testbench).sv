// Full Subtractor
module fullsubtractor_tb;
  reg a1,b1,Bin1;
  wire d1,Bout1;
  fullsubtractor fullsubtractor_tb (.a(a1),.b(b1),.Bin(Bin1),.d(d1),.Bout(Bout1));
  initial begin
    $dumpfile("Full Subtractor.vcd");
    $dumpvars(1);
    a1 = 1'b0; b1 = 1'b0; Bin1 = 1'b0;
    #1 $display("a:%b b:%b Bin :%b d:%b Bout:%b",a1,b1,Bin1,d1,Bout1);
    a1 = 1'b0; b1 = 1'b0; Bin1 = 1'b1;
    #1 $display("a:%b b:%b Bin :%b d:%b Bout:%b",a1,b1,Bin1,d1,Bout1);
    a1 = 1'b0; b1 = 1'b1; Bin1 = 1'b0;
    #1 $display("a:%b b:%b Bin :%b d:%b Bout:%b",a1,b1,Bin1,d1,Bout1);
    a1 = 1'b0; b1 = 1'b1; Bin1 = 1'b1;
    #1 $display("a:%b b:%b Bin :%b d:%b Bout:%b",a1,b1,Bin1,d1,Bout1);
    a1 = 1'b1; b1 = 1'b0; Bin1 = 1'b0;
    #1 $display("a:%b b:%b Bin :%b d:%b Bout:%b",a1,b1,Bin1,d1,Bout1);
    a1 = 1'b1; b1 = 1'b0; Bin1 = 1'b1;
    #1 $display("a:%b b:%b Bin :%b d:%b Bout:%b",a1,b1,Bin1,d1,Bout1);
    a1 = 1'b1; b1 = 1'b1; Bin1 = 1'b0;
    #1 $display("a:%b b:%b Bin :%b d:%b Bout:%b",a1,b1,Bin1,d1,Bout1);
    a1 = 1'b1; b1 = 1'b1; Bin1 = 1'b1;
    #1 $display("a:%b b:%b Bin :%b d:%b Bout:%b",a1,b1,Bin1,d1,Bout1);
  end
endmodule
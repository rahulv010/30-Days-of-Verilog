// Half Subtractor
module halfsubtractor_tb;
  reg a1,b1;
  wire d1,B1;
  halfsubtractor halfsubtractor_tb (.a(a1),.b(b1),.d(d1),.B(B1));
  initial begin
    $dumpfile("Half Subtractor.vcd");
    $dumpvars(1);
    a1 = 1'b0; b1 = 1'b0;
    #1 $display("a:%b b:%b d:%b B:%b",a1,b1,d1,B1);
    a1 = 1'b0; b1 = 1'b1;
    #1 $display("a:%b b:%b d:%b B:%b",a1,b1,d1,B1);
    a1 = 1'b1; b1 = 1'b0;
    #1 $display("a:%b b:%b d:%b B:%b",a1,b1,d1,B1);
    a1 = 1'b1; b1 = 1'b1;
    #1 $display("a:%b b:%b d:%b B:%b",a1,b1,d1,B1);
  end
endmodule



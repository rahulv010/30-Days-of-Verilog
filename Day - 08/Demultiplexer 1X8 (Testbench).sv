module demux_tb;
  reg a1;
  reg [2:0] b1;
  wire c1,d1,e1,f1,g1,h1,i1,j1;
  demux demux_tb(.a(a1),.b(b1),.c(c1),.d(d1),.e(e1),.f(f1),.g(g1),.h(h1),.i(i1),.j(j1));
  initial begin
    $dumpfile("demux.vcd");
      $dumpvars(1);
    a1 = 1'b1;
    b1 = 3'b000;
    #1 $display("Input : %b, Select : %b, Output : %b %b %b %b %b %b %b %b",a1,b1,c1,d1,e1,f1,g1,h1,i1,j1);
    b1 = 3'b001;
    #1 $display("Input : %b, Select : %b, Output : %b %b %b %b %b %b %b %b",a1,b1,c1,d1,e1,f1,g1,h1,i1,j1);
    b1 = 3'b010;
    #1 $display("Input : %b, Select : %b, Output : %b %b %b %b %b %b %b %b",a1,b1,c1,d1,e1,f1,g1,h1,i1,j1);
    b1 = 3'b011;
    #1 $display("Input : %b, Select : %b, Output : %b %b %b %b %b %b %b %b",a1,b1,c1,d1,e1,f1,g1,h1,i1,j1);
    b1 = 3'b100;
    #1 $display("Input : %b, Select : %b, Output : %b %b %b %b %b %b %b %b",a1,b1,c1,d1,e1,f1,g1,h1,i1,j1);
    b1 = 3'b101;
    #1 $display("Input : %b, Select : %b, Output : %b %b %b %b %b %b %b %b",a1,b1,c1,d1,e1,f1,g1,h1,i1,j1);
    b1 = 3'b110;
    #1 $display("Input : %b, Select : %b, Output : %b %b %b %b %b %b %b %b",a1,b1,c1,d1,e1,f1,g1,h1,i1,j1);
    b1 = 3'b111;
    #1 $display("Input : %b, Select : %b, Output : %b %b %b %b %b %b %b %b",a1,b1,c1,d1,e1,f1,g1,h1,i1,j1);
  end
endmodule
module demux_tb;
  reg a1,s1;
  reg c1,d1;
  demux demux_tb(.a(a1),.s(s1),.c(c1),.d(d1));
  initial begin
    $dumpfile("demux.vcd");
      $dumpvars(1);
    a1 = 1'b1;
    s1 = 1'b0;
    #1 $display("Select : %b, Input : %b, Output : %b %b",s1,a1,c1,d1);
    a1 = 1'b1;
    s1 = 1'b1;
    #1 $display("Select : %b, Input : %b, Output : %b %b",s1,a1,c1,d1);
  end

endmodule
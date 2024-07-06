// Traffic Light Controller
module light_tb;
  reg a,d,clk,r,y,g;
  light light_tb (.on(a),.off(d),.r(r),.y(y),.g(g),.clk(clk));
  initial begin
    clk = 0;
    forever #2 clk = ~clk;
  end
  initial begin
    $dumpfile("light.vcd");
    $dumpvars(1);
    $monitor("Time : %0d  Red : %b  Yellow : %b  Green : %b",$time,r,y,g);
    a = 1;
    #50;
    a = 0; d = 1;
    $finish;
  end
endmodule
//Asynchronous Up Counter
module counter_tb;
  reg t1,clk1;
  wire [3:0] q1,qb1;
  counter dut (.clk(clk1),.q(q1),.qb(qb1));
  initial begin
    clk1= 1'b0;
    forever #2 clk1 = ~clk1;
  end
  initial begin
    $dumpfile("Counters.vcd");
    $dumpvars (1);
    $monitor ("Time: %0d, Output: %b", $time, q1);
    t1 = 1'b1;
    #66;
    $finish;
  end
endmodule


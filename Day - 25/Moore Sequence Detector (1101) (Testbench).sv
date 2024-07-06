// Moore Sequence Detector (1101)
module tb_Moore();

reg Din, Clock, Reset;
wire Y;

Moore dut( .Din(Din), .Clock(Clock), .Reset(Reset), .Y(Y) );

always #5 Clock = ~Clock; 

initial begin
  $dumpfile("Moore.vcd");
  $dumpvars(0);
  Clock = 0;
  Reset = 1; 
  #10 Reset = 0;
  
  // Input sequence
  Din = 1; #10
  Din = 0; #10
  Din = 1; #10
  Din = 1; #10
  Din = 0; #10
  Din = 1; #10
  
  #100
  $finish;
end

initial begin
  $monitor("Time=%0t Din=%b State=%b Y=%b", $time, Din, dut.state, Y);
end
      
endmodule
//Gray Counter
module testbench;
  reg clk1,reset1;
  wire [3:0] y1;
  gray_counter dut(.clk(clk1),.reset(reset1),.y(y1));
  initial begin
    clk1= 1'b0;
    forever #5 clk1 = ~clk1;
  end
  initial begin
    reset1 = 1'b1;
    #10;
    reset1 = 1'b0;
  end
  initial begin
    $monitor("counter: %b", y1);
    #175 $finish;
  end
endmodule
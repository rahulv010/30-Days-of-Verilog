// 4-Bit ROM
module ROM_TB;
  reg [1:0] a1;
  wire [3:0] data1;
  ROM dut (.a(a1),.data(data1));
  initial begin
    $dumpfile("ROM.vcd");
    $dumpvars (1);
    a1 = 2'b00;
    #10;
    a1= 2'b10;
    #10;
    if (data1 === 4'b0011)
      $display("Test Passed: Read Data is Correct");
    else
      $display("Test Failed: Read Data is Incorrect");
    a1= 2'b11;
    #10;
    if (data1== 4'b0011)
      $display("Test Passed: Read Data is Correct");
    else
      $display("Test Failed: Read Data is Incorrect");
  $finish;
  end
endmodule



// 8-Bit ROM
module ROM_TB;
  reg [2:0] a1;
  wire [7:0] data1;
  ROM dut (.a(a1),.data(data1));
  initial begin
    $dumpfile("ROM.vcd");
    $dumpvars (1);
    a1 = 3'b000;
    #10;
    a1= 3'b010;
    #10;
    if (data1 == 8'b01010101)
      $display("Test Passed: Read Data is Correct");
    else
      $display("Test Failed: Read Data is Incorrect");
    a1= 2'b11;
    #10;
    if (data1 == 8'b01010100)
      $display("Test Passed: Read Data is Correct");
    else
      $display("Test Failed: Read Data is Incorrect");
  $finish;
  end
endmodule



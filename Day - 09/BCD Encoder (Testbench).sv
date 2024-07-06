//Decimal To BCD Encoder 
module encoder_tb;
  reg [9:0] a1;
  reg [3:0] b1;
  encoder encoder_tb(.a(a1),.b(b1));
  initial begin
    $dumpfile("Encoder.vcd");
    $dumpvars(1);
    a1 = 10'b0000000001;
    #1 $display("Input : %b , Output : %b",a1,b1);
    a1 = 10'b0000000010;
    #1 $display("Input : %b , Output : %b",a1,b1);
    a1 = 10'b0000000100;
    #1 $display("Input : %b , Output : %b",a1,b1);
    a1 = 10'b0000001000;
    #1 $display("Input : %b , Output : %b",a1,b1);
    a1 = 10'b0000010000;
    #1 $display("Input : %b , Output : %b",a1,b1);
    a1 = 10'b0000100000;
    #1 $display("Input : %b , Output : %b",a1,b1);
    a1 = 10'b0001000000;
    #1 $display("Input : %b , Output : %b",a1,b1);
    a1 = 10'b0010000000;
    #1 $display("Input : %b , Output : %b",a1,b1);
    a1 = 10'b0100000000;
    #1 $display("Input : %b , Output : %b",a1,b1);
    a1 = 10'b1000000000;
    #1 $display("Input : %b , Output : %b",a1,b1);
  end
endmodule

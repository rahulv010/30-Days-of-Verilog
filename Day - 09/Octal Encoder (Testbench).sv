//Encoder 8:3
module encoder_tb;
  reg [7:0] a1;
  reg [2:0] b1;
  encoder encoder_tb(.a(a1),.b(b1));
  initial begin
    $dumpfile("Encoder.vcd");
    $dumpvars(1);
    a1 = 8'b00000001;
    #1 $display("Input : %b , Output : %b",a1,b1);
    a1 = 8'b00000010;
    #1 $display("Input : %b , Output : %b",a1,b1);
    a1 = 8'b00000100;
    #1 $display("Input : %b , Output : %b",a1,b1);
    a1 = 8'b00001000;
    #1 $display("Input : %b , Output : %b",a1,b1);
    a1 = 8'b00010000;
    #1 $display("Input : %b , Output : %b",a1,b1);
    a1 = 8'b00100000;
    #1 $display("Input : %b , Output : %b",a1,b1);
    a1 = 8'b01000000;
    #1 $display("Input : %b , Output : %b",a1,b1);
    a1 = 8'b10000000;
    #1 $display("Input : %b , Output : %b",a1,b1);
  end
endmodule

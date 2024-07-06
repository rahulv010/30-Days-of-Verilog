//Encoder 4:2
module encoder_tb;
  reg [3:0] a1;
  reg [1:0] b1;
  encoder encoder_tb(.a(a1),.b(b1));
  initial begin
    $dumpfile("Encoder.vcd");
    $dumpvars(1);
    a1 = 4'b0001;
    #1 $display("Input : %b , Output : %b",a1,b1);
    a1 = 4'b0010;
    #1 $display("Input : %b , Output : %b",a1,b1);
    a1 = 4'b0100;
    #1 $display("Input : %b , Output : %b",a1,b1);
    a1 = 4'b1000;
    #1 $display("Input : %b , Output : %b",a1,b1);
  end
endmodule

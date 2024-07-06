//Decoder 2:4
module decoder_tb;
  reg a1,b1,e1;
  reg [3:0] y1;
  decoder decoder_tb(.a(a1),.b(b1),.e(e1),.y(y1));
  initial begin
    $dumpfile("Decoder.vcd");
    $dumpvars(1);
    e1 = 1'b0; a1 = 1'bx; b1 = 1'bx;
    #1 $display("Enable : %b , Inputs %b %b , Output %b",e1,a1,b1,y1);
    e1 = 1'b1; a1 = 1'b0; b1 = 1'b0;
    #1 $display("Enable : %b , Inputs %b %b , Output %b",e1,a1,b1,y1);
    e1 = 1'b1; a1 = 1'b0; b1 = 1'b1;
    #1 $display("Enable : %b , Inputs %b %b , Output %b",e1,a1,b1,y1);
    e1 = 1'b1; a1 = 1'b1; b1 = 1'b0;
    #1 $display("Enable : %b , Inputs %b %b , Output %b",e1,a1,b1,y1);
    e1 = 1'b1; a1 = 1'b1; b1 = 1'b1;
    #1 $display("Enable : %b , Inputs %b %b , Output %b",e1,a1,b1,y1);
  end
endmodule
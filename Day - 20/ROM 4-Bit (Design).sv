// 4-Bit ROM
module ROM (a, data);
  input wire [1:0] a;
  output reg [3:0] data;
  always @(*) begin
    case (a)
      2'b00: data = 4'b0000;
      2'b01: data = 4'b1100;
      2'b10: data = 4'b0011;
      2'b11: data = 4'b1111;
      default: data = 4'b0000;
    endcase
  end
endmodule
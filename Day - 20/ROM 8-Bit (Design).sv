// 8-Bit ROM
module ROM (a, data);
  input wire [2:0] a;
  output reg [7:0] data;
  always @(*) begin
    case (a)
      3'b000: data = 8'b00110011;
      3'b001: data = 8'b11001100;
      3'b010: data = 8'b01010101;
      3'b011: data = 8'b10101010;
      3'b100: data = 8'b11110000;
      3'b101: data = 8'b00001111;
      3'b110: data = 8'b10000001;
      3'b111: data = 8'b01111110;
      default: data = 8'b01111110;
    endcase
  end
endmodule
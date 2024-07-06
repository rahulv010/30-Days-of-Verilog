//Arithmatic Logic unit
module ALU (a,b,s,y);
  input [3:0] a,b;
  input [2:0] s;
  output reg [3:0] y;
  always@(a or b or s) begin
    case(s)
      3'b000 : y = a+b;
      3'b001: y = a-b;
      3'b010: y = a&b;
      3'b011: y = ~(a&b);
      3'b100: y = a^b;
      3'b101: y = a~^b;
      3'b110: y = a|b;
      3'b111: y = ~(a|b);
    endcase
  end
endmodule


//SR Flip-Flop
module flipflop (SR,clk,Q,Qb);
  input [1:0] SR;
  input clk;
  output reg Q,Qb;
  always @ (posedge clk) begin
    case (SR) 
      2'b00 : begin Q = Q; Qb = ~Q; end
      2'b01 : begin Q = 0; Qb = ~Q; end
      2'b10 : begin Q = 1; Qb = ~Q; end
      2'b11 : begin Q = 1'bx; Qb = ~Q; end
    endcase
  end
endmodule
  

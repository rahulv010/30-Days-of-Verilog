//JK Flip-Flop
module flipflop (JK,clk,Q,Qb);
  input [1:0] JK;
  input clk;
  output reg Q,Qb;
  always @ (posedge clk) begin
    case (JK) 
      2'b00 : begin Q = Q; Qb = ~Q; end
      2'b01 : begin Q = 0; Qb = ~Q; end
      2'b10 : begin Q = 1; Qb = ~Q; end
      2'b11 : begin Q = Qb; Qb = ~Q; end
    endcase
  end
endmodule
  

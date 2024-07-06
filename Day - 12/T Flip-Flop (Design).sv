//T Flip-Flop
module flipflop (T,clk,Q,Qb);
  input T;
  input clk;
  output reg Q,Qb;
  initial Q = 0;
  always @ (posedge clk) begin
    case (T) 
      1'b0 : begin Q = Q; Qb = ~Q; end
      1'b1 : begin Q = ~Q; Qb = ~Q; end
    endcase
  end
endmodule
  

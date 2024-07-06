//D Flip-Flop
module flipflop (D,clk,Q,Qb);
  input D;
  input clk;
  output reg Q,Qb;
  always @ (posedge clk) begin
    case (D) 
      1'b0 : begin Q = D; Qb = ~Q; end
      1'b1 : begin Q = D; Qb = ~Q; end
    endcase
  end
endmodule
  

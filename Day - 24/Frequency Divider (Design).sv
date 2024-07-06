//Frequency Divider
module flipflop (JK,clk,Q);
  input [1:0] JK;
  input reg clk;
  output reg Q; 
  always @ (negedge clk) begin
    case(JK)
      2'b00 : Q = Q;
      2'b01 : Q = 0;
      2'b10 : Q = 1;
      2'b11 : Q = ~Q;
    endcase
  end
endmodule

module freq (JK,clk,Q,x,y,z);
  input [1:0] JK;
  input clk;
  output reg Q,x,y,z;
  flipflop f0 (JK,clk,x);
  flipflop f1 (JK,x,y);
  flipflop f2 (JK,y,z);
  flipflop f3 (JK,z,Q);
endmodule
  
      
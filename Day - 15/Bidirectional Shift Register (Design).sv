//Bidirectional Shift Register
module register(d,clk,dir,out);
  input d,clk,dir;
  output reg [3:0] out; 
  always @ (posedge clk) begin
    case (dir)
      0 :  out <= {out[2:0], d};
      1 :  out <= {d, out[3:1]};
    endcase
  end
endmodule

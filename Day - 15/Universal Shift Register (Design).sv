//Universal Shift Register
module register(d,clk,dir,out,n);
  input d,clk;
  input [1:0] dir;
  input [3:0] n;
  output reg [3:0] out; 
  always @ (posedge clk) begin
    case (dir)
      2'b00 :  out <= out;
      2'b01 :  out <= {out[2:0], d};
      2'b10 :  out <= {d, out[3:1]};
      2'b11 :  out <= n;
    endcase
  end
endmodule

//Gray Counter
module gray_counter(clk,reset,y);
  input clk,reset;
  output reg [3:0] y;
  reg [3:0] b;
  always@(posedge clk) begin 
    if(reset) begin
      y=4'b0000;
      b=4'b0000;
    end
    else begin
      b = b + 1;
      y = {b[3],b[3]^b[2],b[2]^b[1],b[1]^b[0]};
    end
  end   
endmodule
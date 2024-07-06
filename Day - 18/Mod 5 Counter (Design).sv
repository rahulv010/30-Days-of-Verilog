//Mod 5 Counter
module counter(clk,t,q);
  input clk,t;
  output[2:0] q;
  reg [2:0] c; 
  assign t = 1;
    always @(posedge clk)begin
      if(c<=3'b101)begin
          c = c + 3'b1;          
        end
        else begin
          c = 3'b0;
        end       
    end 
    assign q = c;
endmodule


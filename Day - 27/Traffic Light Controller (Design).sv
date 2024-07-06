// Traffic Light Controller
module light(on,off,r,y,g,clk);
  input on,off,clk;
  reg [1:0] c;
  output reg r=0,y=0,g=0;
  initial c = 2'b00;
  always@(posedge clk) begin
    if (on) begin
      c <= c+2'b01;
      if (c==2'b01) begin
        r<=1;
        y<=0;
        g<=0;
      end
      
      else if (c==2'b10) begin
        r<=0;
        y<=1;
        g<=0;
      end
      
      else if (c==2'b11) begin
        r<=0;
        y<=0;
        g<=1;
      end
        
      else if (c>2'b11) begin
        c<=2'b01;
        r<=1;
        y<=0;
        g<=0;
      end
    end
    else if (off) begin
      c <= 2'b00;
      r<=0;
      y<=0;
      g<=0;
    end
  end
endmodule
      
    
  
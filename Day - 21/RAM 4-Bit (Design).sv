//RAM 4-Bit
module RAM_Cell (ad,we,wd,re,rd);
  input wire [3:0] ad; 
  input wire we;
  input wire [3:0] wd;
  input wire re;
  output reg [3:0] rd;
  reg [3:0] m [0:15];
  always @(posedge we or posedge re) begin
    if (we)
      m[ad] <= wd;
    else if (re)
      rd <= m[ad];
  end
endmodule
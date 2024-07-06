//RAM 1-Bit
module RAM_Cell (we,wd,re,rd);
    input wire we, wd, re;
    output reg rd;
    reg m;
  always @(posedge we or posedge re)
    begin
      if (we)
            m <= wd;
      else if (re)
            rd <= m;
    end
endmodule
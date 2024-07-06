//Magnitude Comparator
module comparator (a,b,x,y,z);
  input reg [1:0] a,b;
  output reg x,y,z;
  always@(a or b) begin
    if (a<b) begin
      x = 1;
      y = 0;
      z = 0; end
    else if (a>b) begin
      x = 0;
      y = 0;
      z = 1; end
    else begin
      x = 0;
      y = 1;
      z = 0; end
  end
endmodule

module comp (a,b,x,y,z);
  input [1:0] a,b;
  output [15:0] x,y,z;
  comparator c0 (a,b,x[0],y[0],z[0]);
  comparator c1 (a,b,x[1],y[1],z[1]);
  comparator c2 (a,b,x[2],y[2],z[2]);
  comparator c3 (a,b,x[3],y[3],z[3]);
  comparator c4 (a,b,x[4],y[4],z[4]);
  comparator c5 (a,b,x[5],y[5],z[5]);
  comparator c6 (a,b,x[6],y[6],z[6]);
  comparator c7 (a,b,x[7],y[7],z[7]);
  comparator c8 (a,b,x[8],y[8],z[8]);
  comparator c9 (a,b,x[9],y[9],z[9]);
  comparator c10 (a,b,x[10],y[10],z[10]);
  comparator c11 (a,b,x[11],y[11],z[11]);
  comparator c12 (a,b,x[12],y[12],z[12]);
  comparator c13 (a,b,x[13],y[13],z[13]);
  comparator c14 (a,b,x[14],y[14],z[14]);
  comparator c15 (a,b,x[15],y[15],z[15]);
endmodule
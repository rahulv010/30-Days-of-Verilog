//CLA Adder 
module cla(a,b,d,s,c);
  input [3:0] a,b;
  input d;
  reg [3:0] g,p;
  output [3:0] s,c;
  
  assign g[0] = a[0]&b[0];
  assign g[1] = a[1]&b[1];
  assign g[2] = a[2]&b[2];
  assign g[3] = a[3]&b[3];
  assign p[0] = a[0]^b[0];
  assign p[1] = a[1]^b[1];
  assign p[2] = a[2]^b[2];
  assign p[3] = a[3]^b[3];
  assign c[0] = g[0]^(p[0]&d);
  assign c[1] = g[1]^(p[1]&c[0]);
  assign c[2] = g[2]^(p[2]&c[1]);
  assign c[3] = g[3]^(p[3]&c[2]);
  assign s[0] = p[0]^d;
  assign s[1] = p[1]^c[0];
  assign s[2] = p[2]^c[1];
  assign s[3] = p[3]^c[2];
  
endmodule
  

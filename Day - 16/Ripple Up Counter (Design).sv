//Asynchronous Up Counter
module flipflop (clk,q,qb);
  input clk;
  output reg q = 0,qb;
  always @(negedge clk) begin 
    q<=~q; qb<=~q;
  end
endmodule

module counter(clk,q,qb);
  input clk;
  output [3:0] q,qb;
  wire a,b;
  flipflop f0 (clk,q[0],qb[0]);
  flipflop f1 (qb[0],q[1],qb[1]);
  flipflop f2 (qb[1],q[2],qb[2]);
  flipflop f3 (qb[2],q[3],qb[3]);
endmodule
  

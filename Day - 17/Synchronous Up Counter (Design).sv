//Synchronous Up Counter
module flipflop (t,clk,q,qb);
  input t,clk;
  output reg q = 0,qb;
  always @(posedge clk) begin 
    case (t)
      0 : begin q<=q; qb<=~q; end
      1 : begin q<=~q; qb<=~q; end
    endcase
  end
endmodule

module counter(t,clk,q,qb);
  input t,clk;
  output [3:0] q,qb;
  wire a,b;
  flipflop f0 (t,clk,q[0],qb[0]);
  flipflop f1 (q[0],clk,q[1],qb[1]);
  and a0 (a,q[0],q[1]);
  flipflop f2 (a,clk,q[2],qb[2]);
  and a1 (b,q[2],a);
  flipflop f3 (b,clk,q[3],qb[3]);
endmodule
  

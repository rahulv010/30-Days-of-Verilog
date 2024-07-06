//Full Adder Using Half Adders
module half_tb;
  reg a1,b1,cin1;
  wire s1,cout1;
  full PUT(.a(a1),.b(b1),.cin(cin1),.s(s1),.cout(cout1));
  initial begin
    $dumpfile("Full adders.vcd");
    $dumpvars(1);
    a1 = 1'b0; b1 = 1'b0; cin1 = 1'b0;
    #1 $display("Input : %b%b%b , Output : %b%b",a1,b1,cin1,cout1,s1);
    a1 = 1'b0; b1 = 1'b0; cin1 = 1'b1;
    #1 $display("Input : %b%b%b , Output : %b%b",a1,b1,cin1,cout1,s1);
    a1 = 1'b0; b1 = 1'b1; cin1 = 1'b0;
    #1 $display("Input : %b%b%b , Output : %b%b",a1,b1,cin1,cout1,s1);
    a1 = 1'b0; b1 = 1'b1; cin1 = 1'b1;
    #1 $display("Input : %b%b%b , Output : %b%b",a1,b1,cin1,cout1,s1);
    a1 = 1'b1; b1 = 1'b0; cin1 = 1'b0;
    #1 $display("Input : %b%b%b , Output : %b%b",a1,b1,cin1,cout1,s1);
    a1 = 1'b1; b1 = 1'b0; cin1 = 1'b1;
    #1 $display("Input : %b%b%b , Output : %b%b",a1,b1,cin1,cout1,s1);
    a1 = 1'b1; b1 = 1'b1; cin1 = 1'b0;
    #1 $display("Input : %b%b%b , Output : %b%b",a1,b1,cin1,cout1,s1);
    a1 = 1'b1; b1 = 1'b1; cin1 = 1'b1;
    #1 $display("Input : %b%b%b , Output : %b%b",a1,b1,cin1,cout1,s1);
  end
endmodule

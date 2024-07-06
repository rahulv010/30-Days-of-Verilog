//RAM 4-Bit
module RAM_Cell_Testbench;
  reg [3:0] ad,wd,rd;
  reg we,re;
  RAM_Cell dut ( .ad(ad), .we(we), .wd(wd), .re(re), .rd(rd) );
  reg clock = 0;
  always #5 clock = ~clock;

  initial begin
        ad = 0;
        we = 0;
        wd = 4'b0000;
        re = 0;

        we = 1;
        ad = 2;    
        wd = 4'b1101; 
        #10;

        we = 0;
        re = 1;
        ad = 2;  
        #10;

   if (rd === 4'b1101)
     $display("Test Passed: Read Data is Correct");
   else
     $display("Test Failed: Read Data is Incorrect");
    $finish;
    end
endmodule
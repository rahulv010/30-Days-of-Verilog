//RAM 1-Bit
module RAM_Cell_Testbench;
    reg we;
    reg wd;
    reg re;
    wire rd;
  RAM_Cell uut ( .we(we), .wd(wd), .re(re), .rd(rd) );
    reg clock = 0;
    always #5 clock = ~clock; 
    initial begin
        we = 0;
        wd = 0;
        re = 0;
        we = 1; wd = 1; #10;
        we = 0;  re = 1; #10; 
      if (rd === 1)
            $display("Test Passed: Read Data is Correct");
        else
            $display("Test Failed: Read Data is Incorrect");
        $finish;
    end
endmodule
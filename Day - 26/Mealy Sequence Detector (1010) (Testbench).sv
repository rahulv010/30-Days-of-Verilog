// Mealy Sequence Detector (1010)
module mealy_fsm_tb;

    reg din;
    reg clk;
    reg rst;

    wire dout;

    mealy dut ( .din(din), .clk(clk), .rst(rst), .dout(dout) );

    always begin
        #5 clk = ~clk;
    end

    initial begin

        din = 0;
        clk = 0;
        rst = 1;
        #10 rst = 0;

        din = 1; #10;
        din = 0; #10;
        din = 1; #10;
			  din = 0; #10;
        din = 1; #10;

        $finish;
    end

    always @(posedge clk) begin
      $monitor("Time=%0d, din=%b, dout=%b", $time, din, dout);
    end

endmodule
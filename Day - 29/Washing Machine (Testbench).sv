//Washing Machine

module tb_washing_machine;

    // Inputs
    reg clk;
    reg reset;
    reg start;
    reg [1:0] mode;

    // Outputs
    wire [3:0] state;
    wire fill;
    wire wash;
    wire rinse;
    wire spin;
    wire drain;

    // Instantiate the washing machine module
    washing_machine uut (
        .clk(clk),
        .reset(reset),
        .start(start),
        .mode(mode),
        .state(state),
        .fill(fill),
        .wash(wash),
        .rinse(rinse),
        .spin(spin),
        .drain(drain)
    );

    // Clock generation
    always #5 clk = ~clk;

    // Test sequence
    initial begin
        // Initialize inputs
        clk = 0;
        reset = 1;
        start = 0;
        mode = 2'b00; // Light mode

        // Wait for global reset
        #10;
        reset = 0;

        // Start the washing machine
        #10;
        start = 1;
        #10;
        start = 0;

        // Wait for the washing cycle to complete
        #1000;

        // Test normal mode
        mode = 2'b01; // Normal mode
        #10;
        start = 1;
        #10;
        start = 0;

        // Wait for the washing cycle to complete
        #1000;

        // Test heavy mode
        mode = 2'b10; // Heavy mode
        #10;
        start = 1;
        #10;
        start = 0;

        // Wait for the washing cycle to complete
        #1000;

        // End simulation
        $finish;
    end

    // Monitor outputs
    initial begin
        $monitor("Time: %0t | State: %b | Fill: %b | Wash: %b | Rinse: %b | Spin: %b | Drain: %b",
                  $time, state, fill, wash, rinse, spin, drain);
    end

endmodule

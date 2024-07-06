//Washing Machine

module washing_machine(
    input clk,           // Clock input
    input reset,         // Reset input
    input start,         // Start button
    input [1:0] mode,    // Washing mode (00: light, 01: normal, 10: heavy)
    output reg [3:0] state,   // Current state of the machine
    output reg fill,     // Fill water
    output reg wash,     // Wash
    output reg rinse,    // Rinse
    output reg spin,     // Spin
    output reg drain     // Drain water
);

// State encoding
parameter IDLE  = 4'b0000,
          FILL  = 4'b0001,
          WASH  = 4'b0010,
          RINSE = 4'b0011,
          SPIN  = 4'b0100,
          DRAIN = 4'b0101,
          DONE  = 4'b0110;

// Timing parameters for each mode
parameter LIGHT_FILL_TIME  = 5,
          LIGHT_WASH_TIME  = 10,
          LIGHT_RINSE_TIME = 5,
          LIGHT_SPIN_TIME  = 5,
          
          NORMAL_FILL_TIME  = 10,
          NORMAL_WASH_TIME  = 20,
          NORMAL_RINSE_TIME = 10,
          NORMAL_SPIN_TIME  = 10,
          
          HEAVY_FILL_TIME  = 15,
          HEAVY_WASH_TIME  = 30,
          HEAVY_RINSE_TIME = 15,
          HEAVY_SPIN_TIME  = 15;

reg [3:0] next_state;
reg [7:0] timer;
reg [7:0] fill_time, wash_time, rinse_time, spin_time;

always @(posedge clk or posedge reset) begin
    if (reset) begin
        state <= IDLE;
        timer <= 0;
    end else begin
        state <= next_state;
        if (state != IDLE) begin
            timer <= timer + 1;
        end else begin
            timer <= 0;
        end
    end
end

always @(*) begin
    // Default values
    fill = 0;
    wash = 0;
    rinse = 0;
    spin = 0;
    drain = 0;
    next_state = state;
    
    case (state)
        IDLE: begin
            if (start) begin
                case (mode)
                    2'b00: begin
                        fill_time = LIGHT_FILL_TIME;
                        wash_time = LIGHT_WASH_TIME;
                        rinse_time = LIGHT_RINSE_TIME;
                        spin_time = LIGHT_SPIN_TIME;
                    end
                    2'b01: begin
                        fill_time = NORMAL_FILL_TIME;
                        wash_time = NORMAL_WASH_TIME;
                        rinse_time = NORMAL_RINSE_TIME;
                        spin_time = NORMAL_SPIN_TIME;
                    end
                    2'b10: begin
                        fill_time = HEAVY_FILL_TIME;
                        wash_time = HEAVY_WASH_TIME;
                        rinse_time = HEAVY_RINSE_TIME;
                        spin_time = HEAVY_SPIN_TIME;
                    end
                endcase
                next_state = FILL;
            end
        end
        
        FILL: begin
            fill = 1;
            if (timer == fill_time) begin
                timer = 0;
                next_state = WASH;
            end
        end
        
        WASH: begin
            wash = 1;
            if (timer == wash_time) begin
                timer = 0;
                next_state = RINSE;
            end
        end
        
        RINSE: begin
            rinse = 1;
            if (timer == rinse_time) begin
                timer = 0;
                next_state = SPIN;
            end
        end
        
        SPIN: begin
            spin = 1;
            if (timer == spin_time) begin
                timer = 0;
                next_state = DRAIN;
            end
        end
        
        DRAIN: begin
            drain = 1;
            if (timer == 5) begin
                next_state = DONE;
            end
        end
        
        DONE: begin
            // Washing cycle complete
            next_state = IDLE;
        end
    endcase
end

endmodule

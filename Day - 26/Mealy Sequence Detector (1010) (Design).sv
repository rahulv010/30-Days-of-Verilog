// Mealy Sequence Detector (1010)
module mealy(
    input din, clk, rst,
    output reg dout );
    reg [1:0] current_state, next_state;
    
    parameter S0 = 2'b00,
              S1 = 2'b01,
              S2 = 2'b10,
              S3 = 2'b11;

    always @(posedge clk) begin
        if (rst == 1) begin
            current_state <= S0;
        end else begin
            current_state <= next_state;
        end
    end

    always @(current_state or din) begin
        case (current_state)
            S0: begin
                if (din == 1) begin
                    next_state = S1;
                    dout = 1'b0;
                end else begin
                    next_state = S0;
                    dout = 1'b0;
                end
            end

            S1: begin
                if (din == 0) begin
                    next_state = S2;
                    dout = 1'b0;
                end else begin
                    next_state = S1;
                    dout = 1'b0;
                end
            end

            S2: begin
                if (din == 1) begin
                    next_state = S3;
                    dout = 1'b0;
                end else begin
                    next_state = S0;
                    dout = 1'b0;
                end
            end

            S3: begin
                if (din == 0) begin
                    next_state = S0;
                    dout = 1'b1;
                end else begin
                    next_state = S1;
                    dout = 1'b0;
                end
            end

            default: next_state = S0;
        endcase
    end

endmodule
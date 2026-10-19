module sr_latch_nand (
    input S,
    input R,
    output reg Q,
    output reg Qbar
);

always @(*) begin
        if (!S && R) begin
            Q    = 1'b1;  // Set
            Qbar = 1'b0;
        end
        else if (S && !R) begin
            Q    = 1'b0;  // Reset
            Qbar = 1'b1;
        end
        else if (!S && !R) begin
            Q    = 1'b1;  // Invalid
            Qbar = 1'b1;
        end
        // S = 1, R = 1: Hold previous state
    end

endmodule

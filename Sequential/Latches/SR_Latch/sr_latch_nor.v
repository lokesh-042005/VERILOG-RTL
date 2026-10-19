module sr_latch_nor (
    input S,
    input R,
    output reg Q,
    output reg Qbar
);

    always @(*) begin
        if (S && !R) begin
            Q    = 1'b1;  // Set
            Qbar = 1'b0;
        end
        else if (!S && R) begin
            Q    = 1'b0;  // Reset
            Qbar = 1'b1;
        end
        else if (S && R) begin
            Q    = 1'b0;  // Invalid
            Qbar = 1'b0;
        end
        // S=0, R=0: Hold previous state
    end

endmodule


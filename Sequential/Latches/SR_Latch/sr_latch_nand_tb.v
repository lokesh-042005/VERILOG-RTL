module sr_latch_nand_tb;

reg S, R;
wire Q, Qbar;

sr_latch_nand uut (
        .S(S),
        .R(R),
        .Q(Q),
        .Qbar(Qbar)
    );

initial begin
        $monitor("Time=%0t | S=%b R=%b | Q=%b Qbar=%b", $time, S, R, Q, Qbar);

// Reset
        S = 1; R = 0; #10;

// Hold after reset
        S = 1; R = 1; #10;

// Set
        S = 0; R = 1; #10;

// Hold after set
        S = 1; R = 1; #10;

// Invalid condition
        S = 0; R = 0; #10;

// Reset again
        S = 1; R = 0; #10;

$finish;
    end

endmodule

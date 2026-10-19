module gated_sr_latch_tb;
reg S, R, E;
wire Q, Qbar;


gated_sr_latch uut (
        .S(S),
        .R(R),
        .E(E),
        .Q(Q),
        .Qbar(Qbar)
);

initial begin
        $monitor("Time=%0t | E=%b S=%b R=%b | Q=%b Qbar=%b",$time, E, S, R, Q, Qbar);

        // Reset
        E = 1; S = 0; R = 1; #10;

        // Hold while enabled
        E = 1; S = 0; R = 0; #10;

        // Set
        E = 1; S = 1; R = 0; #10;

        // Hold while enabled
        E = 1; S = 0; R = 0; #10;

        // Invalid
        E = 1; S = 1; R = 1; #10;

        $finish;
    end

endmodule

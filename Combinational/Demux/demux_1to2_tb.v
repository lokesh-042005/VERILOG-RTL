module demux_1to2_tb;
    reg  A, S;
    wire Y0, Y1;
    integer i;

    demux_1to2 uut (
        .A(A),
        .S(S),
        .Y0(Y0),
        .Y1(Y1)
    );

    initial begin
        $dumpfile("demux_1to2.vcd");
        $dumpvars(0, demux_1to2_tb);
        $monitor("time=%0t S=%b A=%b Y0=%b Y1=%b", $time, S, A, Y0, Y1);

        for (i = 0; i < 4; i = i + 1) begin
            {S,A} = i[1:0];
            #10;
        end

        $finish;
    end
endmodule

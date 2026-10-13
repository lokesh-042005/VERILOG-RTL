module demux_1to4_tb;
    reg A;
    reg  [1:0] S;
    wire  y0, y1, y2, y3;
    integer i;

    demux_1to4 uut (
        .A(A),
        .S(S),
        .y0(y0),
        .y1(y1),
        .y2(y2),
        .y3(y3)
    );

    initial begin
        $dumpfile("demux_1to4.vcd");
        $dumpvars(0, demux_1to4_tb);
        $monitor("time=%0t S=%b A=%b y0=%b y1=%b y2=%b y3=%b",
                  $time, S, A, y0, y1, y2, y3);

        for (i = 0; i < 8; i = i + 1) begin
            {S,A} = i[2:0];
            #10;
        end

        $finish;
    end
endmodule

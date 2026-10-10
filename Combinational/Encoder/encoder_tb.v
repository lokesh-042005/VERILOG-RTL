
module encoder_tb;

reg D0,D1,D2,D3;
wire Y1,Y0;

encoder uut (
    .D0(D0),
    .D1(D1),
    .D2(D2),
    .D3(D3),
    .Y1(Y1),
    .Y0(Y0)
);

initial begin
    $dumpfile("encoder.vcd");
    $dumpvars(0, encoder_tb);

    {D3,D2,D1,D0} = 4'b0001; #10;
    {D3,D2,D1,D0} = 4'b0010; #10;
    {D3,D2,D1,D0} = 4'b0100; #10;
    {D3,D2,D1,D0} = 4'b1000; #10;
end

initial begin
    $monitor("time = %0t D3=%b D2=%b D1=%b D0=%b Y1=%b Y0=%b",$time, D3, D2, D1, D0, Y1, Y0);
    #40; $finish;
end

endmodule


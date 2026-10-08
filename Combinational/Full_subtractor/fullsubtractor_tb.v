module fullsubtractor_tb;

reg A, B, Bin;
wire Diff, Borrow;

fullsubtractor uut (
    .A(A),
    .B(B),
    .Bin(Bin),
    .Diff(Diff),
    .Borrow(Borrow)
);

initial begin

    {A, B, Bin} = 3'b000; #10;
    {A, B, Bin} = 3'b001; #10;
    {A, B, Bin} = 3'b010; #10;
    {A, B, Bin} = 3'b011; #10;
    {A, B, Bin} = 3'b100; #10;
    {A, B, Bin} = 3'b101; #10;
    {A, B, Bin} = 3'b110; #10;
    {A, B, Bin} = 3'b111; #10;

    $finish;
end

initial begin
    $monitor("A=%b B=%b Bin=%b | Diff=%b Borrow=%b", A, B, Bin, Diff, Borrow);
end

endmodule

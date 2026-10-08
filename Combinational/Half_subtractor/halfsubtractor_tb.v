module halfsubtractor_tb;
reg A,B;
wire Diff,Borrow;

halfsubtractor uut (
	.A(A),
	.B(B),
	.Diff(Diff),
	.Borrow(Borrow)
);

initial begin 

{A,B} = 2'b00; #10;
{A,B} = 2'b01; #10;
{A,B} = 2'b10; #10;
{A,B} = 2'b11; #10;

$finish;
end 

initial begin
	$monitor("A=%b B=%b | Diff=%b Borrow=%b", A, B, Diff, Borrow);
end

endmodule


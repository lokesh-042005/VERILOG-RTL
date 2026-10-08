module halfadder_tb;
reg A,B;
wire sum,carry;

halfadder uut (
	.A(A),
	.B(B),
	.sum(sum),
	.carry(carry)
);

initial begin 
	{A,B} = 2'b00; #10;
	{A,B} = 2'b01; #10;
	{A,B} = 2'b10; #10;
	{A,B} = 2'b11; #10;

end

initial begin
$monitor("Time=%0t | A=%b B=%b | sum=%b carry=%b",$time, A, B, sum, carry);

#40; $finish;

end

endmodule

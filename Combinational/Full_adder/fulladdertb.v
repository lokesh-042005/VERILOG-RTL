module fulladder_tb;
reg A,B,C;
wire sum,carry;

fulladder uut (
	.A(A),
	.B(B),
	.C(C),
	.sum(sum),
	.carry(carry)
);

initial begin

{A,B,C} = 3'b000; #10;
{A,B,C} = 3'b001; #10;
{A,B,C} = 3'b010; #10;
{A,B,C} = 3'b011; #10;
{A,B,C} = 3'b100; #10;
{A,B,C} = 3'b101; #10;
{A,B,C} = 3'b110; #10;
{A,B,C} = 3'b111; #10;

$finish;

end

initial begin
$monitor("Time=%0t| A=%b B=%b C=%b | sum=%b carry=%b",$time, A, B, C, sum, carry);
end

endmodule

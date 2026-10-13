module mux_4to1_tb;
reg A,B,C,D;
reg [1:0] S;
wire Y;
integer i;

mux_4to1 uut (
	.A(A),
	.B(B),
	.C(C),
	.D(D),
	.S(S),
	.Y(Y)
);

initial begin 
	$dumpfile("mux_4to1.vcd");
	$dumpvars(0, mux_4to1_tb);
	$monitor("time=%0t S=%b A=%b B=%b C=%b D=%b Y=%b",$time, S, A, B, C, D, Y);

	for (i = 0; i < 64; i = i+1) begin
		{S,A,B,C,D} = i[5:0];
		#10;
	end

	$finish;
end

endmodule

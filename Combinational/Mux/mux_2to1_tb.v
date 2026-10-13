module mux_2to1_tb;
reg A,B,S;
wire Y;
integer i;

mux_2to1 uut (
	.A(A),
	.B(B),
	.S(S),
	.Y(Y)
);

initial begin
	$dumpfile("mux_2to1.vcd");
	$dumpvars(0, mux_2to1_tb);

	$monitor("time = %0t S=%b A=%b B=%b Y=%b",$time, S, A, B, Y);
	for (i = 0; i < 8; i = i+1) begin
		{S,A,B} = i[2:0];
		#80;
	end
	$finish;

end 
endmodule


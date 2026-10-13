module mux_2to1_tb;
reg A,B,S;
wire Y;

mux_2to1 uut (
	.A(A),
	.B(B),
	.S(S),
	.Y(Y)
);

initial begin
	A = 0;
	B = 1;
S = 0; #10;
S = 1; #10;

$finish;
end

initial begin 
	$dumpfile("mux_2to1.vcd");
	$dumpvars(0, mux_2to1_tb);

	$monitor("time = %0t S=%b A=%b B=%b Y=%b",$time, S, A, B, Y);
	#40;
end 
endmodule


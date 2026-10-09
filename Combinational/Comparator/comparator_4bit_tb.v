module comparator_4bit_tb;
reg [3:0] A,B;
wire greater,equal,lesser;

comparator_4bit uut (
	.A(A),
	.B(B),
	.greater(greater),
	.equal(equal),
	.lesser(lesser)
);

initial begin 
	$monitor("time=%0t  A=%d  B=%d  |  greater=%b  equal=%b  lesser=%b",$time, A, B, greater, equal, lesser);
	A = 4'd5;  B = 4'd3;   #10; 
        A = 4'd7;  B = 4'd7;   #10;   
        A = 4'd2;  B = 4'd9;   #10;

	$finish;
end

endmodule

module decoder_tb;
reg A,B;
wire Y0,Y1,Y2,Y3;

decoder uut (
	.A(A),
	.B(B),
	.Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3)
);

initial begin 
	{A,B} = 2'b00; #10;
        {A,B} = 2'b01; #10;
        {A,B} = 2'b10; #10;
        {A,B} = 2'b11; #10;
end

initial begin 
	$monitor("time = %0t A=%b B=%b Y0=%b Y1=%b Y2=%b Y3=%b",$time, A, B, Y0, Y1, Y2, Y3);
	#40; $finish;
end 

endmodule




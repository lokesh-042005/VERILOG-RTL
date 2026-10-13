module demux_1to2 (
	input A,
	input S,
	output reg Y0, Y1
);

always @(*) begin
	Y0 = 1'b0;
	Y1 = 1'b0;

	if (S)
		Y1 = A;
	else
		Y0 = A;
end 

endmodule

module halfadder(
input A,B,
output reg sum,carry
);

always @(*) begin
	sum = A^B;
	carry = A&B;
end
endmodule
	

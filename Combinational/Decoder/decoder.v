module decoder (
input A,B,
output reg Y0,Y1,Y2,Y3
);

always @(*) begin
	Y0 = ~A & ~B;
	Y1 = ~A & B;  
	Y2 = A & ~B;
	Y3 = A & B; 
end

endmodule  

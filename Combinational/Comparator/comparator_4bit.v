module comparator_4bit (
input [3:0] A,B,
output reg greater,equal,lesser
);

always @(*) begin
	if (A > B) begin
		greater = 1;
		equal = 0;
		lesser = 0;
	end
	else if (A == B) begin
                greater = 0;
                equal = 1;
                lesser = 0;
        end
	else begin
                greater = 0;
                equal = 0;
                lesser = 1;
        end
end

endmodule

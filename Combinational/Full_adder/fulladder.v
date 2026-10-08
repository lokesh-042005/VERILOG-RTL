module fulladder (
input A,B,C,
output reg sum,carry
);

always @(*) begin 

sum = A^B^C;
carry = A&B|B&C|C&A;

end

endmodule

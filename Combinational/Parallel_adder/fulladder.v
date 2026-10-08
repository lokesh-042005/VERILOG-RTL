module fulladder (
input A,B,Cin,
output reg sum,Cout
);

always @(*) begin 

sum = A^B^Cin;
Cout = A&B|B&Cin|Cin&A;

end

endmodule


module encoder (
input D0,D1,D2,D3,
output reg Y1,Y0
);

always @(*) begin
    Y1 = D2 | D3;
    Y0 = D1 | D3;
end

endmodule


module fullsubtractor (
    input A,
    input B,
    input Bin,
    output reg Diff,
    output reg Borrow
);

always @(*) begin
    Diff = A ^ B ^ Bin;
    Borrow = (~A & B) | (~A & Bin) | (B & Bin);
end

endmodule

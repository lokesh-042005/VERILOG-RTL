module mux_2to1 (
input A,B,S,
output reg Y
);

always @(*) begin
        if (S)
                Y = B;
        else
                Y = A;
end
endmodule   

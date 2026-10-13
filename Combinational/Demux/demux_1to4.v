module demux_1to4 (
    input        A,
    input  [1:0] S,
    output reg   y0, y1, y2, y3
);

always @(*) begin
    y0 = 1'b0;          
    y1 = 1'b0;
    y2 = 1'b0;
    y3 = 1'b0;

    case (S)
        2'b00:   y0 = A;
        2'b01:   y1 = A;
        2'b10:   y2 = A;
        2'b11:   y3 = A;
        default: ;      
    endcase
end

endmodule

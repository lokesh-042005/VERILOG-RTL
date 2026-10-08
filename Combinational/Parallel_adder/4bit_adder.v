module adder_4bit (
    input  [3:0] A, B,
    input        Cin,
    output [3:0] sum,
    output       Cout
);

    wire [3:1] C;  

    fulladder fa0 (.A(A[0]), .B(B[0]), .Cin(Cin),  .sum(sum[0]), .Cout(C[1]));
    fulladder fa1 (.A(A[1]), .B(B[1]), .Cin(C[1]), .sum(sum[1]), .Cout(C[2]));
    fulladder fa2 (.A(A[2]), .B(B[2]), .Cin(C[2]), .sum(sum[2]), .Cout(C[3]));
    fulladder fa3 (.A(A[3]), .B(B[3]), .Cin(C[3]), .sum(sum[3]), .Cout(Cout));

endmodule

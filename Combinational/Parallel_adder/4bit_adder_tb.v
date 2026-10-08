module adder_4bit_tb;

    reg  [3:0] A, B;
    reg        Cin;
    wire [3:0] sum;
    wire       Cout;

    adder_4bit uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .sum(sum),
        .Cout(Cout)
    );

    initial begin
        $monitor("time=%0t  A=%d B=%d Cin=%b -> Cout=%b sum=%d",
                  $time, A, B, Cin, Cout, sum);

        A = 4'd0;  B = 4'd0;  Cin = 0; #10;
        A = 4'd5;  B = 4'd3;  Cin = 0; #10;
        A = 4'd15; B = 4'd1;  Cin = 0; #10;
        A = 4'd7;  B = 4'd8;  Cin = 1; #10;
        A = 4'd15; B = 4'd15; Cin = 1; #10;

        $finish;
    end

endmodule

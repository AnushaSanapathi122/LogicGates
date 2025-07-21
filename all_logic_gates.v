//All logic gates module

module a11_gates (
    input  A,
    input  B,
    output reg Y
);
    assign Y = A & B;//AND gate
    assign Y = A | B;//OR gate
    assign Y = ~A;//NOT Gate
    assign Y = ~(A & B);//NAND gate
    assign Y = ~(A | B);//NOR gate
    assign Y = A ^ B;//XOR gate
    assign Y = ~(A ^ B);//X-NOR gate
endmodule


//All Logic Gates Testbench
module all_gate_tb;
    reg A, B;
    wire Y;

    a11_gates uut (
        .A(A),
        .B(B),
        .Y(Y)
    );

    initial begin
         $dumpfile("wave.vcd");
         $dumpvars(0, all_gate_tb);
    end
    initial begin
        $display("A B | Y");
        A = 0; B = 0; #10 $display("%b %b | %b", A, B, Y);
        A = 0; B = 1; #10 $display("%b %b | %b", A, B, Y);
        A = 1; B = 0; #10 $display("%b %b | %b", A, B, Y);
        A = 1; B = 1; #10 $display("%b %b | %b", A, B, Y);
        $finish;
    end

endmodule
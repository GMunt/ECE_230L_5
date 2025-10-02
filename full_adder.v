// Implement module called full_adder
module full_adder (
    input A, B, Cin,
    
    output Y, Cout
);
    assign Y = (B ^ Cin) + (A * ~B * ~Cin) + (A * B);
    assign Cout = (B * Cin) + (A & (B + Cin));
endmodule 
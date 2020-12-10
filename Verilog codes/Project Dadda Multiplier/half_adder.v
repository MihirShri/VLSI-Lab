module half_adder(
    input [1:0] in, 
    output sum,
    output carry
);
    xor XOR_1(sum, in[0], in[1]);
    and AND_1(carry, in[0], in[1]);
endmodule
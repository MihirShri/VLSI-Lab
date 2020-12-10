module comp_4_2(
    input [3:0] in,
    input cin,
    output  sum, 
    output  carry, 
    output cout
);
    wire w1;
    full_adder f1(in[1:0], in[2], w1, cout);
    full_adder f2({w1, in[3]}, cin, sum, carry);
    
endmodule
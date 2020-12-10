module comp_8_4(
    input [7:0] in,
    input [1:0] cin,
    output [1:0] sum,
    output [1:0] carry,
    output [1:0] cout
);
    
    comp_4_2 c0(in[3:0], cin[0], sum[0], carry[0], cout[0]);
    comp_4_2 c1(in[7:4], cin[1], sum[1], carry[1], cout[1]);

endmodule
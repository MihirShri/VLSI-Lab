module comp_12_6(
    input [11:0] in,
    input [2:0] cin,
    output [2:0] sum,
    output [2:0] carry,
    output [2:0] cout
);
    
    comp_8_4 c0(in[7:0], cin[1:0], sum[1:0], carry[1:0], cout[1:0]);
    comp_4_2 c1(in[11:8], cin[2], sum[2], carry[2], cout[2]);
    
endmodule
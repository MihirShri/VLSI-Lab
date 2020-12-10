module comp_16_8(
    input [15:0] in,
    input [3:0] cin,
    output [3:0] sum,
    output [3:0] carry,
    output [3:0] cout
);
    
    comp_8_4 c0(in[7:0],cin[1:0], sum[1:0], carry[1:0], cout[1:0]);
    comp_8_4 c1(in[15:8],cin[3:2], sum[3:2], carry[3:2], cout[3:2]);
    
endmodule
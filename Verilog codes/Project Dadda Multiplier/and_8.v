module and_8(
    input in0_0,
    input in0_1,
    input in0_2,
    input in0_3,
    input in0_4,
    input in0_5,
    input in0_6,
    input in0_7,
    input in1_0,
    input in1_1,
    input in1_2,
    input in1_3,
    input in1_4,
    input in1_5,
    input in1_6,
    input in1_7,
    output [7:0] out
);
    and_4 a0(in0_0, in0_1, in0_2, in0_3, in1_0, in1_1, in1_2, in1_3, out[3:0]);
    and_4 a1(in0_4, in0_5, in0_6, in0_7, in1_4, in1_5, in1_6, in1_7, out[7:4]);
endmodule
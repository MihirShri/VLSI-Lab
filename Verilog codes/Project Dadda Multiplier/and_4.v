module and_4(
    input in1_0,
    input in1_1,
    input in1_2,
    input in1_3,
    input in2_0,
    input in2_1,
    input in2_2,
    input in2_3,
    output [3:0] out
);
    and a0(out[0], in1_0, in2_0);
    and a1(out[1], in1_1, in2_1);
    and a2(out[2], in1_2, in2_2);
    and a3(out[3], in1_3, in2_3);

endmodule
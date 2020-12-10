module comp_4_2_8(
    input [3:0] in0,
    input [3:0] in1,
    input [3:0] in2,
    input [3:0] in3,
    input [3:0] in4,
    input [3:0] in5,
    input [3:0] in6,
    input [3:0] in7,
    input cin,
    output [1:0] out0,
    output [1:0] out1,
    output [1:0] out2,
    output [1:0] out3,
    output [1:0] out4,
    output [1:0] out5,
    output [1:0] out6,
    output [1:0] out7,
    output cout
    );

    wire w;
    comp_4_2_4 c0(
        in0[3:0], in1[3:0], in2[3:0], in3[3:0],
        cin,
        out0[1:0], out1[1:0], out2[1:0], out3[1:0],
        w
    );
    comp_4_2_4 c1(
        in4[3:0], in5[3:0], in6[3:0], in7[3:0],
        w,
        out4[1:0], out5[1:0], out6[1:0], out7[1:0],
        cout
    );


endmodule
module comp_4_2_4(
    input [3:0] in0,
    input [3:0] in1,
    input [3:0] in2,
    input [3:0] in3,
    input cin,
    output [1:0] out0,
    output [1:0] out1,
    output [1:0] out2,
    output [1:0] out3,
    output cout
    );
    wire [6:0] w;
    comp_4_2 c0(in0[3:0], cin, out0[1:0], w[0]);
    comp_4_2 c1(in1[3:0], w[0], out1[1:0], w[1]);
    comp_4_2 c2(in2[3:0], w[1], out2[1:0], w[2]);
    comp_4_2 c3(in3[3:0], w[2], out3[1:0], cout);


endmodule
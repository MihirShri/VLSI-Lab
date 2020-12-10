`include "headers.v"
module dadda_multiplier_32(
    input [15:0] in0,
    input [15:0] in1,
    output[31:0] product
);

	wire out00, out30;
	wire [01:0] out01, out29;
	wire [02:0] out02, out28;
	wire [03:0] out03, out27;
	wire [04:0] out04, out26;
	wire [05:0] out05, out25;
	wire [06:0] out06, out24;
	wire [07:0] out07, out23;
	wire [08:0] out08, out22;
	wire [09:0] out09, out21;
	wire [10:0] out10, out20;
	wire [11:0] out11, out19;
	wire [12:0] out12, out18;
	wire [13:0] out13, out17;
	wire [14:0] out14, out16;
	wire [15:0] out15;
	
// 	and 0, 30 col
	and a0_0(out00, in0[0], in1[0]); 
	and a30_0(out30, in0[15], in1[15]); 
// 	and 1, 29 col
	and a1_0(out01[0], in0[0], in1[1]); 
	and a1_1(out01[1], in0[1], in1[0]);
	and a29_0(out29[0], in0[15], in1[14]); 
	and a29_1(out29[1], in0[14], in1[15]);

// 	and 2, 28 col 
	and a2_0(out02[0], in0[0], in1[2]); 
	and a2_1(out02[1], in0[1], in1[1]);
	and a2_2(out02[2], in0[2], in1[0]); 
	and a28_0(out28[2], in0[13], in1[15]); 
	and a28_1(out28[1], in0[14], in1[14]);
	and a28_2(out28[0], in0[15], in1[13]);

//	and 3, 27
	and_4 a3(in0[3], in0[2], in0[1], in0[0], in1[0], in1[1], in1[2], in1[3], out03[3:0]);
	and_4 a27(in0[15], in0[14], in0[13], in0[12], in1[12], in1[13], in1[14], in1[15], out27[3:0]);

// 	and 4, 26
	and_4 a4_0(in0[3], in0[2], in0[1], in0[0], in1[1], in1[2], in1[3], in1[4], out04[3:0]);
	and_4 a26_0(in0[15], in0[14], in0[13], in0[12], in1[11], in1[12], in1[13], in1[14], out26[3:0]);
	and a4_1(out04[4], in0[4], in1[0]);
	and a26_1(out26[4], in0[11], in1[15]);

//  and 5, 25
	and_4 a5_0(in0[3], in0[2], in0[1], in0[0], in1[2], in1[3], in1[4], in1[5], out05[3:0]);
	and_4 a25_0(in0[15], in0[14], in0[13], in0[12], in1[10], in1[11], in1[12], in1[13], out25[3:0]);
	and a5_1(out05[4], in0[4], in1[1]);
	and a5_2(out05[5], in0[5], in1[0]);
	and a25_1(out25[4], in0[10], in1[15]);
	and a25_2(out25[5], in0[11], in1[14]);

//	and 6, 24
	and_4 a6_0(in0[3], in0[2], in0[1], in0[0], in1[3], in1[4], in1[5], in1[6], out06[3:0]);
	and_4 a24_0(in0[15], in0[14], in0[13], in0[12], in1[09], in1[10], in1[11], in1[12], out24[3:0]);
	and a6_1(out06[4], in0[4], in1[2]);
	and a6_2(out06[5], in0[5], in1[1]);
	and a6_3(out06[6], in0[6], in1[0]);
	and a24_1(out24[4], in0[9], in1[15]);
	and a24_2(out24[5], in0[10], in1[14]);
	and a24_3(out24[6], in0[11], in1[13]);

//	and 7, 23
	and_8 a7_0(
		in0[7], in0[6], in0[5], in0[4], in0[3], in0[2], in0[1], in0[0], 
		in1[0], in1[1], in1[2], in1[3], in1[4], in1[5], in1[6], in1[7], 
		out07[7:0]
	);
	and_8 a23_0(
		in0[15], in0[14], in0[13], in0[12], in0[11], in0[10], in0[09], in0[08], 
		in1[08], in1[09], in1[10], in1[11], in1[12], in1[13], in1[14], in1[15], 
		out23[7:0]
	);

// 	and 8, 22
	and_8 a8_0(
		in0[7], in0[6], in0[5], in0[4], in0[3], in0[2], in0[1], in0[0], 
		in1[1], in1[2], in1[3], in1[4], in1[5], in1[6], in1[7], in1[8], 
		out08[7:0]
	);
	and_8 a22_0(
		in0[15], in0[14], in0[13], in0[12], in0[11], in0[10], in0[09], in0[08], 
		in1[07], in1[08], in1[09], in1[10], in1[11], in1[12], in1[13], in1[14],  
		out22[7:0]
	);
	and a8_1(out08[8], in0[8], in1[0]);
	and a22_1(out22[8], in0[7], in1[15]);

//	and 9, 21
	and_8 a9_0(
		in0[7], in0[6], in0[5], in0[4], in0[3], in0[2], in0[1], in0[0], 
		in1[2], in1[3], in1[4], in1[5], in1[6], in1[7], in1[8], in1[9],
		out09[7:0]
	);
	and_8 a21_0(
		in0[15], in0[14], in0[13], in0[12], in0[11], in0[10], in0[09], in0[08], 
		in1[06], in1[07], in1[08], in1[09], in1[10], in1[11], in1[12], in1[13], 
		out21[7:0]
	);
	and a9_1(out09[8], in0[8], in1[1]);
	and a21_1(out21[8], in0[7], in1[14]);
	and a9_2(out09[9], in0[9], in1[0]);
	and a21_2(out21[9], in0[6], in1[15]);

// 	and 10, 20
	and_8 a10_0(
		in0[7], in0[6], in0[5], in0[4], in0[3], in0[2], in0[1], in0[0], 
		in1[3], in1[4], in1[5], in1[6], in1[7], in1[8], in1[9], in1[10],
		out10[7:0]
	);
	and_8 a20_0(
		in0[15], in0[14], in0[13], in0[12], in0[11], in0[10], in0[09], in0[08], 
		in1[05], in1[06], in1[07], in1[08], in1[09], in1[10], in1[11], in1[12], 
		out20[7:0]
	);
	and a10_1(out10[8], in0[8], in1[2]);
	and a20_1(out20[8], in0[7], in1[13]);
	and a10_2(out10[9], in0[9], in1[1]);
	and a20_2(out20[9], in0[6], in1[14]);
	and a10_3(out10[10], in0[10], in1[0]);
	and a20_3(out20[10], in0[5], in1[15]);

// 	and 11, 19
	and_8 a11_0(
		in0[07], in0[06], in0[05], in0[04], in0[03], in0[02], in0[01], in0[00], 
		in1[04], in1[05], in1[06], in1[07], in1[08], in1[09], in1[10], in1[11],
		out11[7:0]
	);
	and_8 a19_0(
		in0[15], in0[14], in0[13], in0[12], in0[11], in0[10], in0[09], in0[08], 
		in1[04], in1[05], in1[06], in1[07], in1[08], in1[09], in1[10], in1[11],  
		out19[7:0]
	);
	and_4 a11_1(
		in0[08], in0[09], in0[10], in0[11],
		in1[03], in1[02], in1[01], in1[00],
		out11[11:8]
	); 
	and_4 a19_1(
		in0[07], in0[06], in0[05], in0[04],
		in1[12], in1[13], in1[14], in1[15],
		out19[11:8]
	);

// 	and 12, 18
	and_8 a12_0(
		in0[07], in0[06], in0[05], in0[04], in0[03], in0[02], in0[01], in0[00], 
		in1[05], in1[06], in1[07], in1[08], in1[09], in1[10], in1[11], in1[12],
		out12[7:0]
	);
	and_8 a18_0(
		in0[15], in0[14], in0[13], in0[12], in0[11], in0[10], in0[09], in0[08], 
		in1[03], in1[04], in1[05], in1[06], in1[07], in1[08], in1[09], in1[10], 
		out18[7:0]
	);
	and_4 a12_1(
		in0[08], in0[09], in0[10], in0[11],
		in1[04], in1[03], in1[02], in1[01],
		out12[11:8]
	); 
	and_4 a18_1(
		in0[07], in0[06], in0[05], in0[04],
		in1[11], in1[12], in1[13], in1[14],
		out18[11:8]
	);
	and a12_2(out12[12], in0[12], in1[00]);
	and a18_2(out18[12], in0[03], in1[15]);

// 	and 17, 13
	and_8 a13_0(
		in0[07], in0[06], in0[05], in0[04], in0[03], in0[02], in0[01], in0[00], 
		in1[06], in1[07], in1[08], in1[09], in1[10], in1[11], in1[12], in1[13],
		out13[7:0]
	);
	and_8 a17_0(
		in0[15], in0[14], in0[13], in0[12], in0[11], in0[10], in0[09], in0[08], 
		in1[02], in1[03], in1[04], in1[05], in1[06], in1[07], in1[08], in1[09], 
		out17[7:0]
	);
	and_4 a13_1(
		in0[08], in0[09], in0[10], in0[11],
		in1[05], in1[04], in1[03], in1[02],
		out13[11:8]
	); 
	and_4 a17_1(
		in0[07], in0[06], in0[05], in0[04],
		in1[10], in1[11], in1[12], in1[13],
		out17[11:8]
	);
	and a13_2(out13[12], in0[12], in1[01]);
	and a17_2(out17[12], in0[03], in1[14]);

	and a13_3(out13[13], in0[13], in1[00]);
	and a17_3(out17[13], in0[02], in1[15]);


//	and 14, 16
	and_8 a14_0(
		in0[07], in0[06], in0[05], in0[04], in0[03], in0[02], in0[01], in0[00], 
		in1[07], in1[08], in1[09], in1[10], in1[11], in1[12], in1[13], in1[14],
		out14[7:0]
	);
	and_8 a16_0(
		in0[15], in0[14], in0[13], in0[12], in0[11], in0[10], in0[09], in0[08], 
		in1[01], in1[02], in1[03], in1[04], in1[05], in1[06], in1[07], in1[08], 
		out16[7:0]
	);
	and_4 a14_1(
		in0[08], in0[09], in0[10], in0[11],
		in1[06], in1[05], in1[04], in1[03],
		out14[11:8]
	); 
	and_4 a16_1(
		in0[06], in0[05], in0[04], in0[03],
		in1[10], in1[11], in1[12], in1[13],
		out16[11:8]
	);
	and a14_2(out14[12], in0[12], in1[02]);
	and a16_2(out16[12], in0[03], in1[13]);

	and a14_3(out14[13], in0[13], in1[01]);
	and a16_3(out16[13], in0[02], in1[14]);

	and a14_4(out14[14], in0[14], in1[00]);
	and a16_4(out16[14], in0[01], in1[15]);


// 	and 15
	and_8 a15_0(
		in0[07], in0[06], in0[05], in0[04], in0[03], in0[02], in0[01], in0[00], 
		in1[08], in1[09], in1[10], in1[11], in1[12], in1[13], in1[14], in1[15],
		out15[7:0]
	);
	and_8 a15_1(
		in0[15], in0[14], in0[13], in0[12], in0[11], in0[10], in0[09], in0[08], 
		in1[00], in1[01], in1[02], in1[03], in1[04], in1[05], in1[06], in1[07], 
		out15[15:8]
	);
	
/*  COMPRESSION OF COLUMNS	*/

/*	STAGE 1	*/



	wire s1_out00, s1_out30;
	wire [1:0] s1_out01, s1_out29;
	wire [2:0] s1_out02, s1_out28;
	wire [3:0] s1_out03, s1_out27;
	wire [4:0] s1_out04, s1_out26;
	wire [5:0] s1_out05, s1_out25;
	wire [5:0] s1_out19, s1_out21, s1_out23;
	wire [6:0] s1_out06, s1_out08, s1_out10, s1_out12;
	wire [7:0] s1_out07, s1_out09, s1_out11, s1_out13, s1_out14, s1_out15, s1_out16, s1_out17, s1_out18, s1_out20, s1_out22, s1_out24;
	wire [39:0] s1_wire;

	assign s1_out00 = out00;
	assign s1_out01[1:0] = out01[1:0];
	assign s1_out02[2:0] = out02[2:0];
	assign s1_out03[3:0] = out03[3:0];
	assign s1_out04[4:0] = out04[4:0];
	assign s1_out05[5:0] = out05[5:0];
	assign s1_out06[6:0] = out06[6:0];
	assign s1_out07[7:0] = out07[7:0];

	assign s1_out08[4:0] = out08[4:0];
	comp_4_2 s1_col08(out08[8:5], 1'b0, s1_out08[6:5], s1_wire[0]);
	
	assign s1_out09[5:0] = out09[5:0];
	comp_4_2 s1_col09(out09[9:6], s1_wire[0], s1_out09[7:6], s1_wire[1]);

	assign s1_out10[2:0] = out10[2:0];
	comp_8_4 s1_col10(out10[10:3], {1'b0, s1_wire[1]}, s1_out10[6:3], s1_wire[3:2]);

	assign s1_out11[3:0] = out11[3:0];
	comp_8_4 s1_col11(out11[11:4], s1_wire[3:2], s1_out11[7:4], s1_wire[5:4]);

	assign s1_out12[0] = out12[0];
	comp_12_6 s1_col12(out12[12:1], {1'b0, s1_wire[5:4]}, s1_out12[6:1], s1_wire[8:6]);

	assign s1_out13[1:0] = out13[1:0];
	comp_12_6 s1_col13(out13[13:2], s1_wire[8:6], s1_out13[7:2], s1_wire[11:9]);

	comp_16_8 s1_col14({1'b0, out14[14:0]}, {1'b0, s1_wire[11:9]}, s1_out14[7:0], s1_wire[15:12]);
	comp_16_8 s1_col15(out15[15:0], s1_wire[15:12], s1_out15[7:0], s1_wire[19:16]);
	comp_16_8 s1_col16({1'b0, out16[14:0]}, s1_wire[19:16], s1_out16[7:0], s1_wire[23:20]);
	comp_16_8 s1_col17({2'b00, out17[13:0]}, s1_wire[23:20], s1_out17[7:0], s1_wire[27:24]);

	assign s1_out18[1:0] = {s1_wire[24] ,out18[0]};
	comp_12_6 s1_col18(out18[12:1], s1_wire[27:25], s1_out18[7:2], s1_wire[30:28]);
	comp_12_6 s1_col19(out19[11:0], s1_wire[30:28], s1_out19[5:0], s1_wire[33:31]);
	
	assign s1_out20[3:0] = {s1_wire[31], out20[2:0]};
	comp_8_4 s1_col20(out20[10:3], s1_wire[33:32], s1_out20[7:4], s1_wire[35:34]); 

	assign s1_out21[1:0] = out20[1:0];
	comp_8_4 s1_col21(out21[9:2], s1_wire[35:34], s1_out21[5:2], s1_wire[37:36]);

	assign s1_out22[5:0] = {s1_wire[36], out22[4:0]};
	comp_4_2 s1_col22(out22[8:5], s1_wire[37], s1_out22[7:6], s1_wire[38]);

	assign s1_out23[3:0] = out23[3:0];
	comp_4_2 col23(out23[7:4], s1_wire[38], s1_out23[5:4], s1_wire[39]);

	assign s1_out24 = {s1_wire[39], out24[6:0]};
	assign s1_out25 = out25;
	assign s1_out26 = out26;
	assign s1_out27 = out27;
	assign s1_out28 = out28;
	assign s1_out29 = out29;
	assign s1_out30 = out30;



	wire s2_out00, s2_out30;
	wire [1:0] s2_out01, s2_out27, s2_out29;
	wire [2:0] s2_out02, s2_out04;
	wire [3:0] s2_out03, s2_out28;
	wire [3:0] s2_out05, s2_out06, s2_out07, s2_out08, s2_out09, s2_out10, s2_out11, s2_out12, s2_out13, s2_out14, s2_out15, s2_out16, s2_out17, s2_out18, s2_out19, s2_out20, s2_out21, s2_out22, s2_out23, s2_out24, s2_out25, s2_out26;
	wire [43:0] s2_wire;
	
	assign s2_out00 = s1_out00;
	assign s2_out01 = s1_out01;
	assign s2_out02 = s1_out02;
	assign s2_out03 = s1_out03;
	
	assign s2_out04[0] = s1_out04[0];
	comp_4_2 s2_col4(s1_out04[4:1], 1'b0, s2_out04[2:1], s2_wire[0]);
	
	assign s2_out05[1:0] = s1_out05[1:0];
	comp_4_2 s2_col5(s1_out05[5:2], s2_wire[0], s2_out05[3:2], s2_wire[1]);
	
	comp_8_4 s2_col06({1'b0, s1_out06[6:0]}, {1'b0, s2_wire[1]}, s2_out06[3:0], s2_wire[3:2]);
	// full_adder s2_col06_1(s1_out06[4], s1_out06[5], s1_out06[6], );
	
	
	
	comp_8_4 s2_col07(s1_out07[7:0], s2_wire[3:2], s2_out07[3:0], s2_wire[5:4]);
	comp_8_4 s2_col08({1'b0, s1_out08[6:0]}, s2_wire[5:4], s2_out08[3:0], s2_wire[7:6]);
	comp_8_4 s2_col09(s1_out09[7:0], s2_wire[7:6], s2_out09[3:0], s2_wire[9:8]);
	comp_8_4 s2_col10({1'b0, s1_out10[6:0]}, s2_wire[9:8], s2_out10[3:0], s2_wire[11:10]);
	comp_8_4 s2_col11(s1_out11[7:0], s2_wire[11:10], s2_out11[3:0], s2_wire[13:12]);
	comp_8_4 s2_col12({1'b0, s1_out12[6:0]}, s2_wire[13:12], s2_out12[3:0], s2_wire[15:14]);
	comp_8_4 s2_col13(s1_out13[7:0], s2_wire[15:14], s2_out13[3:0], s2_wire[17:16]);
	comp_8_4 s2_col14(s1_out14[7:0], s2_wire[17:16], s2_out14[3:0], s2_wire[19:18]);
	comp_8_4 s2_col15(s1_out15[7:0], s2_wire[19:18], s2_out15[3:0], s2_wire[21:20]);
	comp_8_4 s2_col16(s1_out16[7:0], s2_wire[21:20], s2_out16[3:0], s2_wire[23:22]);
	comp_8_4 s2_col17(s1_out17[7:0], s2_wire[23:22], s2_out17[3:0], s2_wire[25:24]);
	comp_8_4 s2_col18( s1_out18[7:0], s2_wire[25:24], s2_out18[3:0], s2_wire[27:26]);
	comp_8_4 s2_col19({2'b00, s1_out19[5:0]}, s2_wire[27:26], s2_out19[3:0], s2_wire[29:28]);
	comp_8_4 s2_col20( s1_out20[7:0], s2_wire[29:28], s2_out20[3:0], s2_wire[31:30]);
	comp_8_4 s2_col21({2'b00, s1_out21[5:0]}, s2_wire[31:30], s2_out21[3:0], s2_wire[33:32]);
	comp_8_4 s2_col22( s1_out22[7:0], s2_wire[33:32], s2_out22[3:0], s2_wire[35:34]);
	comp_8_4 s2_col23({2'b00, s1_out23[5:0]}, s2_wire[35:34], s2_out23[3:0], s2_wire[37:36]);
	comp_8_4 s2_col24( s1_out24[7:0], s2_wire[37:36], s2_out24[3:0], s2_wire[39:38]);
	comp_8_4 s2_col25({2'b00, s1_out25[5:0]}, s2_wire[39:38], s2_out25[3:0], s2_wire[41:40]);

	assign s2_out26[1:0] = {s2_wire[40], s1_out26[0]}; 
	comp_4_2 s2_col26(s1_out26[4:1], s2_wire[41], s2_out26[3:2], s2_wire[42]);
	comp_4_2 s2_col27(s1_out27[3:0], s2_wire[42], s2_out27[1:0], s2_wire[43]);	
	assign s2_out28[3:0] = {s2_wire[43], s1_out28[2:0]};
	assign s2_out29[1:0] = s1_out29[1:0];
	assign s2_out30 = s1_out30;

	wire s3_out00;
	wire [1:0] s3_out01, s3_out02, s3_out04, s3_out03, s3_out05, s3_out06, s3_out07, s3_out08, s3_out09, s3_out10, s3_out11, s3_out12, s3_out13, s3_out14, s3_out15, s3_out16, s3_out17, s3_out18, s3_out19, s3_out20, s3_out21, s3_out22, s3_out23, s3_out24, s3_out25, s3_out26, s3_out27, s3_out28, s3_out29, s3_out30;
	wire [3:0] s3_wire;

	assign s3_out00 = s2_out00;
	assign s3_out01 = s2_out01;
	comp_4_2_8 s3_col_9_2(
		{1'b0, s2_out02[2:0]}, s2_out03[3:0], {1'b0, s2_out04[2:0]}, s2_out05[3:0], s2_out06[3:0], s2_out07[3:0], s2_out08[3:0], s2_out09[3:0], 
		1'b0,
		s3_out02[1:0], s3_out03[1:0], s3_out04[1:0], s3_out05[1:0], s3_out06[1:0], s3_out07[1:0], s3_out08[1:0], s3_out09[1:0], 
		s3_wire[0]
	);
	
	comp_4_2_8 s3_col_17_10(
		s2_out10[3:0], s2_out11[3:0], s2_out12[3:0], s2_out13[3:0], s2_out14[3:0], s2_out15[3:0], s2_out16[3:0], s2_out17[3:0], 
		s3_wire[0],
		s3_out10[1:0], s3_out11[1:0], s3_out12[1:0], s3_out13[1:0], s3_out14[1:0], s3_out15[1:0], s3_out16[1:0], s3_out17[1:0], 
		s3_wire[1]
	);

	comp_4_2_8 s3_col_25_18(
		s2_out18[3:0], s2_out19[3:0], s2_out20[3:0], s2_out21[3:0], s2_out22[3:0], s2_out23[3:0], s2_out24[3:0], s2_out25[3:0], 
		s3_wire[1],
		s3_out18[1:0], s3_out19[1:0], s3_out20[1:0], s3_out21[1:0], s3_out22[1:0], s3_out23[1:0], s3_out24[1:0], s3_out25[1:0], 
		s3_wire[2]
	);

	comp_4_2_4 col29_26(
		s2_out26[3:0], {2'b00, s2_out27[1:0]}, s2_out28[3:0], {2'b00, s2_out29[1:0]}, 
		s3_wire[2],
		s3_out26[1:0], s3_out27[1:0], s3_out28[1:0], s3_out29[1:0],
		s3_wire[3]
	);
	assign s3_out30[1:0] = {s3_wire[3], s2_out30};


	wire [31:0] row_0;
	wire [31:0] row_1;
	assign row_0[31:0] = {
		1'b0,
		s3_out30[0],
		s3_out29[0],
		s3_out28[0],
		s3_out27[0],
		s3_out26[0],
		s3_out25[0],
		s3_out24[0],
		s3_out23[0],
		s3_out22[0],
		s3_out21[0],
		s3_out20[0],
		s3_out19[0],
		s3_out18[0],
		s3_out17[0],
		s3_out16[0],
		s3_out15[0],
		s3_out14[0],
		s3_out13[0],
		s3_out12[0],
		s3_out11[0],
		s3_out10[0],
		s3_out09[0],
		s3_out08[0],
		s3_out07[0],
		s3_out06[0],
		s3_out05[0],
		s3_out04[0],
		s3_out03[0],
		s3_out02[0],
		s3_out01[0],
		s3_out00
	};
	assign row_1[31:0] = {
		1'b0,
		s3_out30[1],
		s3_out29[1],
		s3_out28[1],
		s3_out27[1],
		s3_out26[1],
		s3_out25[1],
		s3_out24[1],
		s3_out23[1],
		s3_out22[1],
		s3_out21[1],
		s3_out20[1],
		s3_out19[1],
		s3_out18[1],
		s3_out17[1],
		s3_out16[1],
		s3_out15[1],
		s3_out14[1],
		s3_out13[1],
		s3_out12[1],
		s3_out11[1],
		s3_out10[1],
		s3_out09[1],
		s3_out08[1],
		s3_out07[1],
		s3_out06[1],
		s3_out05[1],
		s3_out04[1],
		s3_out03[1],
		s3_out02[1],
		s3_out01[1], 
		1'b0
	};
	assign product[31:0] = {row_1[30:0],1'b0} + row_0[30:0];
	always @(in1, in0) begin
		$display("00 %d %d %b\t %b\t %b\t %b\t", in0, in1, out00, s1_out00, s2_out00, s3_out00);
		$display("01 %d %d %b\t %b\t %b\t %b\t", in0, in1, out01, s1_out01, s2_out01, s3_out01);
		$display("02 %d %d %b\t %b\t %b\t %b\t", in0, in1, out02, s1_out02, s2_out02, s3_out02);
		$display("03 %d %d %b\t %b\t %b\t %b\t", in0, in1, out03, s1_out03, s2_out03, s3_out03);
		$display("04 %d %d %b\t %b\t %b\t %b\t", in0, in1, out04, s1_out04, s2_out04, s3_out04);
		$display("05 %d %d %b\t %b\t %b\t %b\t", in0, in1, out05, s1_out05, s2_out05, s3_out05);
		$display("06 %d %d %b\t %b\t %b\t %b\t", in0, in1, out06, s1_out06, s2_out06, s3_out06);
		$display("07 %d %d %b\t %b\t %b\t %b\t", in0, in1, out07, s1_out07, s2_out07, s3_out07);
		$display("08 %d %d %b\t %b\t %b\t %b\t", in0, in1, out08, s1_out08, s2_out08, s3_out08);
		$display("09 %d %d %b\t %b\t %b\t %b\t", in0, in1, out09, s1_out09, s2_out09, s3_out09);
		$display("10 %d %d %b\t %b\t %b\t %b\t", in0, in1, out10, s1_out10, s2_out10, s3_out10);
		$display("11 %d %d %b\t %b\t %b\t %b\t", in0, in1, out11, s1_out11, s2_out11, s3_out11);
		$display("12 %d %d %b\t %b\t %b\t %b\t", in0, in1, out12, s1_out12, s2_out12, s3_out12);
		$display("13 %d %d %b\t %b\t %b\t %b\t", in0, in1, out13, s1_out13, s2_out13, s3_out13);
		$display("14 %d %d %b\t %b\t %b\t %b\t", in0, in1, out14, s1_out14, s2_out14, s3_out14);
		$display("15 %d %d %b\t %b\t %b\t %b\t", in0, in1, out15, s1_out15, s2_out15, s3_out15);
		$display("16 %d %d %b\t %b\t %b\t %b\t", in0, in1, out16, s1_out16, s2_out16, s3_out16);
		$display("17 %d %d %b\t %b\t %b\t %b\t", in0, in1, out17, s1_out17, s2_out17, s3_out17);
		$display("18 %d %d %b\t %b\t %b\t %b\t", in0, in1, out18, s1_out18, s2_out18, s3_out18);
		$display("19 %d %d %b\t %b\t %b\t %b\t", in0, in1, out19, s1_out19, s2_out19, s3_out19);
		$display("20 %d %d %b\t %b\t %b\t %b\t", in0, in1, out20, s1_out20, s2_out20, s3_out20);
		$display("21 %d %d %b\t %b\t %b\t %b\t", in0, in1, out21, s1_out21, s2_out21, s3_out21);
		$display("22 %d %d %b\t %b\t %b\t %b\t", in0, in1, out22, s1_out22, s2_out22, s3_out22);
		$display("23 %d %d %b\t %b\t %b\t %b\t", in0, in1, out23, s1_out23, s2_out23, s3_out23);
		$display("24 %d %d %b\t %b\t %b\t %b\t", in0, in1, out24, s1_out24, s2_out24, s3_out24);
		$display("25 %d %d %b\t %b\t %b\t %b\t", in0, in1, out25, s1_out25, s2_out25, s3_out25);
		$display("26 %d %d %b\t %b\t %b\t %b\t", in0, in1, out26, s1_out26, s2_out26, s3_out26);
		$display("27 %d %d %b\t %b\t %b\t %b\t", in0, in1, out27, s1_out27, s2_out27, s3_out27);
		$display("28 %d %d %b\t %b\t %b\t %b\t", in0, in1, out28, s1_out28, s2_out28, s3_out28);
		$display("29 %d %d %b\t %b\t %b\t %b\t", in0, in1, out29, s1_out29, s2_out29, s3_out29);
		$display("30 %d %d %b\t %b\t %b\t %b\t", in0, in1, out30, s1_out30, s2_out30, s3_out30);
		$display("row0= %d row1= %d ", row_0, row_1);
	end

endmodule


module comp_4_2(
    input [3:0] in,
    input cin,
    output [1:0] out, 
    output cout
);
    wire w1;
    full_adder f1(in[0], in[1], in[2], w1, cout);
    full_adder f2(w1, in[3], cin, out[0], out[1]);
    
endmodule
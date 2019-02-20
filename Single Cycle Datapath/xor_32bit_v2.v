// 32 bitlik bir sayının tum bitleri bir deger ile xor işlemine sokulur.
module xor_32bit_v2(result,a,b);
input[31:0] a;
input b;
output [31:0] result;
	
xor xor0(result[0],a[0],b);
xor xor1(result[1],a[1],b);
xor xor2(result[2],a[2],b);
xor xor3(result[3],a[3],b);
xor xor4(result[4],a[4],b);
xor xor5(result[5],a[5],b);
xor xor6(result[6],a[6],b);
xor xor7(result[7],a[7],b);
xor xor8(result[8],a[8],b);
xor xor9(result[9],a[9],b);
xor xor10(result[10],a[10],b);
xor xor11(result[11],a[11],b);
xor xor12(result[12],a[12],b);
xor xor13(result[13],a[13],b);
xor xor14(result[14],a[14],b);
xor xor15(result[15],a[15],b);
xor xor16(result[16],a[16],b);
xor xor17(result[17],a[17],b);
xor xor18(result[18],a[18],b);
xor xor19(result[19],a[19],b);
xor xor20(result[20],a[20],b);
xor xor21(result[21],a[21],b);
xor xor22(result[22],a[22],b);
xor xor23(result[23],a[23],b);
xor xor24(result[24],a[24],b);
xor xor25(result[25],a[25],b);
xor xor26(result[26],a[26],b);
xor xor27(result[27],a[27],b);
xor xor28(result[28],a[28],b);
xor xor29(result[29],a[29],b);
xor xor30(result[30],a[30],b);
xor xor31(result[31],a[31],b);
	
endmodule
// 32 bitlik bir sayının tum bitleri bir deger ile or işlemine sokulur.
module or_32bit_v2(result,a,b);
input[31:0] a;
input b;
output [31:0] result;
	
or or0(result[0],a[0],b);
or or1(result[1],a[1],b);
or or2(result[2],a[2],b);
or or3(result[3],a[3],b);
or or4(result[4],a[4],b);
or or5(result[5],a[5],b);
or or6(result[6],a[6],b);
or or7(result[7],a[7],b);
or or8(result[8],a[8],b);
or or9(result[9],a[9],b);
or or10(result[10],a[10],b);
or or11(result[11],a[11],b);
or or12(result[12],a[12],b);
or or13(result[13],a[13],b);
or or14(result[14],a[14],b);
or or15(result[15],a[15],b);
or or16(result[16],a[16],b);
or or17(result[17],a[17],b);
or or18(result[18],a[18],b);
or or19(result[19],a[19],b);
or or20(result[20],a[20],b);
or or21(result[21],a[21],b);
or or22(result[22],a[22],b);
or or23(result[23],a[23],b);
or or24(result[24],a[24],b);
or or25(result[25],a[25],b);
or or26(result[26],a[26],b);
or or27(result[27],a[27],b);
or or28(result[28],a[28],b);
or or29(result[29],a[29],b);
or or30(result[30],a[30],b);
or or31(result[31],a[31],b);

endmodule
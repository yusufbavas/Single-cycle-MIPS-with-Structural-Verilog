// 32 bitlik bir sayının tum bitleri bir deger ile and işlemine sokulur.
module and_32bit_v2(result,a,b);
input[31:0] a;
input b;
output [31:0] result;
	
and and0(result[0],a[0],b);
and and1(result[1],a[1],b);
and and2(result[2],a[2],b);
and and3(result[3],a[3],b);
and and4(result[4],a[4],b);
and and5(result[5],a[5],b);
and and6(result[6],a[6],b);
and and7(result[7],a[7],b);
and and8(result[8],a[8],b);
and and9(result[9],a[9],b);
and and10(result[10],a[10],b);
and and11(result[11],a[11],b);
and and12(result[12],a[12],b);
and and13(result[13],a[13],b);
and and14(result[14],a[14],b);
and and15(result[15],a[15],b);
and and16(result[16],a[16],b);
and and17(result[17],a[17],b);
and and18(result[18],a[18],b);
and and19(result[19],a[19],b);
and and20(result[20],a[20],b);
and and21(result[21],a[21],b);
and and22(result[22],a[22],b);
and and23(result[23],a[23],b);
and and24(result[24],a[24],b);
and and25(result[25],a[25],b);
and and26(result[26],a[26],b);
and and27(result[27],a[27],b);
and and28(result[28],a[28],b);
and and29(result[29],a[29],b);
and and30(result[30],a[30],b);
and and31(result[31],a[31],b);

endmodule
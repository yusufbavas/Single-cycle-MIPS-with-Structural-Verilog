module nor_32bit(result,a,b);
input[31:0] a,b;
output [31:0] result;
	
nor nor0(result[0],a[0],b[0]);
nor nor1(result[1],a[1],b[1]);
nor nor2(result[2],a[2],b[2]);
nor nor3(result[3],a[3],b[3]);
nor nor4(result[4],a[4],b[4]);
nor nor5(result[5],a[5],b[5]);
nor nor6(result[6],a[6],b[6]);
nor nor7(result[7],a[7],b[7]);
nor nor8(result[8],a[8],b[8]);
nor nor9(result[9],a[9],b[9]);
nor nor10(result[10],a[10],b[10]);
nor nor11(result[11],a[11],b[11]);
nor nor12(result[12],a[12],b[12]);
nor nor13(result[13],a[13],b[13]);
nor nor14(result[14],a[14],b[14]);
nor nor15(result[15],a[15],b[15]);
nor nor16(result[16],a[16],b[16]);
nor nor17(result[17],a[17],b[17]);
nor nor18(result[18],a[18],b[18]);
nor nor19(result[19],a[19],b[19]);
nor nor20(result[20],a[20],b[20]);
nor nor21(result[21],a[21],b[21]);
nor nor22(result[22],a[22],b[22]);
nor nor23(result[23],a[23],b[23]);
nor nor24(result[24],a[24],b[24]);
nor nor25(result[25],a[25],b[25]);
nor nor26(result[26],a[26],b[26]);
nor nor27(result[27],a[27],b[27]);
nor nor28(result[28],a[28],b[28]);
nor nor29(result[29],a[29],b[29]);
nor nor30(result[30],a[30],b[30]);
nor nor31(result[31],a[31],b[31]);

endmodule
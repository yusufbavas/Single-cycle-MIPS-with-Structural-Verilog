// 16 bitlik input most significant bite göre 32 bite tamamlanir.
module sign_extend(in,out);

input [15:0]in;
output [31:0] out;

buf b31(out[0],in[0]);
buf b30(out[1],in[1]);
buf b29(out[2],in[2]);
buf b28(out[3],in[3]);
buf b27(out[4],in[4]);
buf b0(out[5],in[5]);
buf b1(out[6],in[6]);
buf b2(out[7],in[7]);
buf b3(out[8],in[8]);
buf b4(out[9],in[9]);
buf b5(out[10],in[10]);
buf b6(out[11],in[11]);
buf b7(out[12],in[12]);
buf b8(out[13],in[13]);
buf b9(out[14],in[14]);
buf b10(out[15],in[15]);
buf b11(out[16],in[15]);
buf b12(out[17],in[15]);
buf b13(out[18],in[15]);
buf b14(out[19],in[15]);
buf b15(out[20],in[15]);
buf b16(out[21],in[15]);
buf b17(out[22],in[15]);
buf b18(out[23],in[15]);
buf b19(out[24],in[15]);
buf b20(out[25],in[15]);
buf b21(out[26],in[15]);
buf b22(out[27],in[15]);
buf b23(out[28],in[15]);
buf b24(out[29],in[15]);
buf b25(out[30],in[15]);
buf b26(out[31],in[15]);

endmodule
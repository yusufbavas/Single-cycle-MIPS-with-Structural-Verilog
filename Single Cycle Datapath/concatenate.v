module concatenate(in,out);

input [4:0]in;
output [31:0] out;

buf b31(out[0],in[0]);
buf b30(out[1],in[1]);
buf b29(out[2],in[2]);
buf b28(out[3],in[3]);
buf b27(out[4],in[4]);
buf b0(out[5],1'b0);
buf b1(out[6],1'b0);
buf b2(out[7],1'b0);
buf b3(out[8],1'b0);
buf b4(out[9],1'b0);
buf b5(out[10],1'b0);
buf b6(out[11],1'b0);
buf b7(out[12],1'b0);
buf b8(out[13],1'b0);
buf b9(out[14],1'b0);
buf b10(out[15],1'b0);
buf b11(out[16],1'b0);
buf b12(out[17],1'b0);
buf b13(out[18],1'b0);
buf b14(out[19],1'b0);
buf b15(out[20],1'b0);
buf b16(out[21],1'b0);
buf b17(out[22],1'b0);
buf b18(out[23],1'b0);
buf b19(out[24],1'b0);
buf b20(out[25],1'b0);
buf b21(out[26],1'b0);
buf b22(out[27],1'b0);
buf b23(out[28],1'b0);
buf b24(out[29],1'b0);
buf b25(out[30],1'b0);
buf b26(out[31],1'b0);

endmodule
module adder_32bit(a,b,sum,carry_in,carry_out);

input [31:0] a,b;
input carry_in;
output[31:0] sum;
output carry_out;
wire[31:0] c;
wire[31:0] b2;

xor_32bit_v2 xb(b2,b,carry_in);

full_adder fa0(a[0],b2[0],carry_in,sum[0],c[0]);
full_adder fa1(a[1],b2[1],c[0],sum[1],c[1]);
full_adder fa2(a[2],b2[2],c[1],sum[2],c[2]);
full_adder fa3(a[3],b2[3],c[2],sum[3],c[3]);
full_adder fa4(a[4],b2[4],c[3],sum[4],c[4]);
full_adder fa5(a[5],b2[5],c[4],sum[5],c[5]);
full_adder fa6(a[6],b2[6],c[5],sum[6],c[6]);
full_adder fa7(a[7],b2[7],c[6],sum[7],c[7]);
full_adder fa8(a[8],b2[8],c[7],sum[8],c[8]);
full_adder fa9(a[9],b2[9],c[8],sum[9],c[9]);
full_adder fa10(a[10],b2[10],c[9],sum[10],c[10]);
full_adder fa11(a[11],b2[11],c[10],sum[11],c[11]);
full_adder fa12(a[12],b2[12],c[11],sum[12],c[12]);
full_adder fa13(a[13],b2[13],c[12],sum[13],c[13]);
full_adder fa14(a[14],b2[14],c[13],sum[14],c[14]);
full_adder fa15(a[15],b2[15],c[14],sum[15],c[15]);
full_adder fa16(a[16],b2[16],c[15],sum[16],c[16]);
full_adder fa17(a[17],b2[17],c[16],sum[17],c[17]);
full_adder fa18(a[18],b2[18],c[17],sum[18],c[18]);
full_adder fa19(a[19],b2[19],c[18],sum[19],c[19]);
full_adder fa20(a[20],b2[20],c[19],sum[20],c[20]);
full_adder fa21(a[21],b2[21],c[20],sum[21],c[21]);
full_adder fa22(a[22],b2[22],c[21],sum[22],c[22]);
full_adder fa23(a[23],b2[23],c[22],sum[23],c[23]);
full_adder fa24(a[24],b2[24],c[23],sum[24],c[24]);
full_adder fa25(a[25],b2[25],c[24],sum[25],c[25]);
full_adder fa26(a[26],b2[26],c[25],sum[26],c[26]);
full_adder fa27(a[27],b2[27],c[26],sum[27],c[27]);
full_adder fa28(a[28],b2[28],c[27],sum[28],c[28]);
full_adder fa29(a[29],b2[29],c[28],sum[29],c[29]);
full_adder fa30(a[30],b2[30],c[29],sum[30],c[30]);
full_adder fa31(a[31],b2[31],c[30],sum[31],c[31]);

xor x_v(carry_out,carry_in,c[31]);

endmodule
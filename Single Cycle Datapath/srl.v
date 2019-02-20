module srl(a,b,result);
	
input[31:0] a;
input[4:0] b;
output[31:0] result;
wire[31:0] w1,w2,w3,w4;

mux_2x1_1bit G1(a[0],a[1],b[0],w1[0]);
mux_2x1_1bit G2(a[1],a[2],b[0],w1[1]);
mux_2x1_1bit G3(a[2],a[3],b[0],w1[2]);
mux_2x1_1bit G4(a[3],a[4],b[0],w1[3]);
mux_2x1_1bit G5(a[4],a[5],b[0],w1[4]);
mux_2x1_1bit G6(a[5],a[6],b[0],w1[5]);
mux_2x1_1bit G7(a[6],a[7],b[0],w1[6]);
mux_2x1_1bit G8(a[7],a[8],b[0],w1[7]);
mux_2x1_1bit G9(a[8],a[9],b[0],w1[8]);
mux_2x1_1bit G10(a[9],a[10],b[0],w1[9]);
mux_2x1_1bit G11(a[10],a[11],b[0],w1[10]);
mux_2x1_1bit G12(a[11],a[12],b[0],w1[11]);
mux_2x1_1bit G13(a[12],a[13],b[0],w1[12]);
mux_2x1_1bit G14(a[13],a[14],b[0],w1[13]);
mux_2x1_1bit G15(a[14],a[15],b[0],w1[14]);
mux_2x1_1bit G16(a[15],a[16],b[0],w1[15]);
mux_2x1_1bit G17(a[16],a[17],b[0],w1[16]);
mux_2x1_1bit G18(a[17],a[18],b[0],w1[17]);
mux_2x1_1bit G19(a[18],a[19],b[0],w1[18]);
mux_2x1_1bit G20(a[19],a[20],b[0],w1[19]);
mux_2x1_1bit G21(a[20],a[21],b[0],w1[20]);
mux_2x1_1bit G22(a[21],a[22],b[0],w1[21]);
mux_2x1_1bit G23(a[22],a[23],b[0],w1[22]);
mux_2x1_1bit G24(a[23],a[24],b[0],w1[23]);
mux_2x1_1bit G25(a[24],a[25],b[0],w1[24]);
mux_2x1_1bit G26(a[25],a[26],b[0],w1[25]);
mux_2x1_1bit G27(a[26],a[27],b[0],w1[26]);
mux_2x1_1bit G28(a[27],a[28],b[0],w1[27]);
mux_2x1_1bit G29(a[28],a[29],b[0],w1[28]);
mux_2x1_1bit G30(a[29],a[30],b[0],w1[29]);
mux_2x1_1bit G31(a[30],a[31],b[0],w1[30]);
mux_2x1_1bit G32(a[31],1'b0,b[0],w1[31]);

mux_2x1_1bit GG1(w1[0],w1[2],b[1],w2[0]);
mux_2x1_1bit GG2(w1[1],w1[3],b[1],w2[1]);
mux_2x1_1bit GG3(w1[2],w1[4],b[1],w2[2]);
mux_2x1_1bit GG4(w1[3],w1[5],b[1],w2[3]);
mux_2x1_1bit GG5(w1[4],w1[6],b[1],w2[4]);
mux_2x1_1bit GG6(w1[5],w1[7],b[1],w2[5]);
mux_2x1_1bit GG7(w1[6],w1[8],b[1],w2[6]);
mux_2x1_1bit GG8(w1[7],w1[9],b[1],w2[7]);
mux_2x1_1bit GG9(w1[8],w1[10],b[1],w2[8]);
mux_2x1_1bit GG10(w1[9],w1[11],b[1],w2[9]);
mux_2x1_1bit GG11(w1[10],w1[12],b[1],w2[10]);
mux_2x1_1bit GG12(w1[11],w1[13],b[1],w2[11]);
mux_2x1_1bit GG13(w1[12],w1[14],b[1],w2[12]);
mux_2x1_1bit GG14(w1[13],w1[15],b[1],w2[13]);
mux_2x1_1bit GG15(w1[14],w1[16],b[1],w2[14]);
mux_2x1_1bit GG16(w1[15],w1[17],b[1],w2[15]);
mux_2x1_1bit GG17(w1[16],w1[18],b[1],w2[16]);
mux_2x1_1bit GG18(w1[17],w1[19],b[1],w2[17]);
mux_2x1_1bit GG19(w1[18],w1[20],b[1],w2[18]);
mux_2x1_1bit GG20(w1[19],w1[21],b[1],w2[19]);
mux_2x1_1bit GG21(w1[20],w1[22],b[1],w2[20]);
mux_2x1_1bit GG22(w1[21],w1[23],b[1],w2[21]);
mux_2x1_1bit GG23(w1[22],w1[24],b[1],w2[22]);
mux_2x1_1bit GG24(w1[23],w1[25],b[1],w2[23]);
mux_2x1_1bit GG25(w1[24],w1[26],b[1],w2[24]);
mux_2x1_1bit GG26(w1[25],w1[27],b[1],w2[25]);
mux_2x1_1bit GG27(w1[26],w1[28],b[1],w2[26]);
mux_2x1_1bit GG28(w1[27],w1[29],b[1],w2[27]);
mux_2x1_1bit GG29(w1[28],w1[30],b[1],w2[28]);
mux_2x1_1bit GG30(w1[29],w1[31],b[1],w2[29]);
mux_2x1_1bit GG31(w1[30],1'b0,b[1],w2[30]);
mux_2x1_1bit GG32(w1[31],1'b0,b[1],w2[31]);


mux_2x1_1bit GGG1(w2[0],w2[4],b[2],w3[0]);
mux_2x1_1bit GGG2(w2[1],w2[5],b[2],w3[1]);
mux_2x1_1bit GGG3(w2[2],w2[6],b[2],w3[2]);
mux_2x1_1bit GGG4(w2[3],w2[7],b[2],w3[3]);
mux_2x1_1bit GGG5(w2[4],w2[8],b[2],w3[4]);
mux_2x1_1bit GGG6(w2[5],w2[9],b[2],w3[5]);
mux_2x1_1bit GGG7(w2[6],w2[10],b[2],w3[6]);
mux_2x1_1bit GGG8(w2[7],w2[11],b[2],w3[7]);
mux_2x1_1bit GGG9(w2[8],w2[12],b[2],w3[8]);
mux_2x1_1bit GGG10(w2[9],w2[13],b[2],w3[9]);
mux_2x1_1bit GGG11(w2[10],w2[14],b[2],w3[10]);
mux_2x1_1bit GGG12(w2[11],w2[15],b[2],w3[11]);
mux_2x1_1bit GGG13(w2[12],w2[16],b[2],w3[12]);
mux_2x1_1bit GGG14(w2[13],w2[17],b[2],w3[13]);
mux_2x1_1bit GGG15(w2[14],w2[18],b[2],w3[14]);
mux_2x1_1bit GGG16(w2[15],w2[19],b[2],w3[15]);
mux_2x1_1bit GGG17(w2[16],w2[20],b[2],w3[16]);
mux_2x1_1bit GGG18(w2[17],w2[21],b[2],w3[17]);
mux_2x1_1bit GGG19(w2[18],w2[22],b[2],w3[18]);
mux_2x1_1bit GGG20(w2[19],w2[23],b[2],w3[19]);
mux_2x1_1bit GGG21(w2[20],w2[24],b[2],w3[20]);
mux_2x1_1bit GGG22(w2[21],w2[25],b[2],w3[21]);
mux_2x1_1bit GGG23(w2[22],w2[26],b[2],w3[22]);
mux_2x1_1bit GGG24(w2[23],w2[27],b[2],w3[23]);
mux_2x1_1bit GGG25(w2[24],w2[28],b[2],w3[24]);
mux_2x1_1bit GGG26(w2[25],w2[29],b[2],w3[25]);
mux_2x1_1bit GGG27(w2[26],w2[30],b[2],w3[26]);
mux_2x1_1bit GGG28(w2[27],w2[31],b[2],w3[27]);
mux_2x1_1bit GGG29(w2[28],1'b0,b[2],w3[28]);
mux_2x1_1bit GGG30(w2[29],1'b0,b[2],w3[29]);
mux_2x1_1bit GGG31(w2[30],1'b0,b[2],w3[30]);
mux_2x1_1bit GGG32(w2[31],1'b0,b[2],w3[31]);


mux_2x1_1bit GGGG1(w3[0],w3[8],b[3],w4[0]);
mux_2x1_1bit GGGG2(w3[1],w3[9],b[3],w4[1]);
mux_2x1_1bit GGGG3(w3[2],w3[10],b[3],w4[2]);
mux_2x1_1bit GGGG4(w3[3],w3[11],b[3],w4[3]);
mux_2x1_1bit GGGG5(w3[4],w3[12],b[3],w4[4]);
mux_2x1_1bit GGGG6(w3[5],w3[13],b[3],w4[5]);
mux_2x1_1bit GGGG7(w3[6],w3[14],b[3],w4[6]);
mux_2x1_1bit GGGG8(w3[7],w3[15],b[3],w4[7]);
mux_2x1_1bit GGGG9(w3[8],w3[16],b[3],w4[8]);
mux_2x1_1bit GGGG10(w3[9],w3[17],b[3],w4[9]);
mux_2x1_1bit GGGG11(w3[10],w3[18],b[3],w4[10]);
mux_2x1_1bit GGGG12(w3[11],w3[19],b[3],w4[11]);
mux_2x1_1bit GGGG13(w3[12],w3[20],b[3],w4[12]);
mux_2x1_1bit GGGG14(w3[13],w3[21],b[3],w4[13]);
mux_2x1_1bit GGGG15(w3[14],w3[22],b[3],w4[14]);
mux_2x1_1bit GGGG16(w3[15],w3[23],b[3],w4[15]);
mux_2x1_1bit GGGG17(w3[16],w3[24],b[3],w4[16]);
mux_2x1_1bit GGGG18(w3[17],w3[25],b[3],w4[17]);
mux_2x1_1bit GGGG19(w3[18],w3[26],b[3],w4[18]);
mux_2x1_1bit GGGG20(w3[19],w3[27],b[3],w4[19]);
mux_2x1_1bit GGGG21(w3[20],w3[28],b[3],w4[20]);
mux_2x1_1bit GGGG22(w3[21],w3[29],b[3],w4[21]);
mux_2x1_1bit GGGG23(w3[22],w3[30],b[3],w4[22]);
mux_2x1_1bit GGGG24(w3[23],w3[31],b[3],w4[23]);
mux_2x1_1bit GGGG25(w3[24],1'b0,b[3],w4[24]);
mux_2x1_1bit GGGG26(w3[25],1'b0,b[3],w4[25]);
mux_2x1_1bit GGGG27(w3[26],1'b0,b[3],w4[26]);
mux_2x1_1bit GGGG28(w3[27],1'b0,b[3],w4[27]);
mux_2x1_1bit GGGG29(w3[28],1'b0,b[3],w4[28]);
mux_2x1_1bit GGGG30(w3[29],1'b0,b[3],w4[29]);
mux_2x1_1bit GGGG31(w3[30],1'b0,b[3],w4[30]);
mux_2x1_1bit GGGG32(w3[31],1'b0,b[3],w4[31]);



mux_2x1_1bit GGGGG1(w4[0],w4[16],b[4],result[0]);
mux_2x1_1bit GGGGG2(w4[1],w4[17],b[4],result[1]);
mux_2x1_1bit GGGGG3(w4[2],w4[18],b[4],result[2]);
mux_2x1_1bit GGGGG4(w4[3],w4[19],b[4],result[3]);
mux_2x1_1bit GGGGG5(w4[4],w4[20],b[4],result[4]);
mux_2x1_1bit GGGGG6(w4[5],w4[21],b[4],result[5]);
mux_2x1_1bit GGGGG7(w4[6],w4[22],b[4],result[6]);
mux_2x1_1bit GGGGG8(w4[7],w4[23],b[4],result[7]);
mux_2x1_1bit GGGGG9(w4[8],w4[24],b[4],result[8]);
mux_2x1_1bit GGGGG10(w4[9],w4[25],b[4],result[9]);
mux_2x1_1bit GGGGG11(w4[10],w4[26],b[4],result[10]);
mux_2x1_1bit GGGGG12(w4[11],w4[27],b[4],result[11]);
mux_2x1_1bit GGGGG13(w4[12],w4[28],b[4],result[12]);
mux_2x1_1bit GGGGG14(w4[13],w4[29],b[4],result[13]);
mux_2x1_1bit GGGGG15(w4[14],w4[30],b[4],result[14]);
mux_2x1_1bit GGGGG16(w4[15],w4[31],b[4],result[15]);
mux_2x1_1bit GGGGG17(w4[16],1'b0,b[4],result[16]);
mux_2x1_1bit GGGGG18(w4[17],1'b0,b[4],result[17]);
mux_2x1_1bit GGGGG19(w4[18],1'b0,b[4],result[18]);
mux_2x1_1bit GGGGG20(w4[19],1'b0,b[4],result[19]);
mux_2x1_1bit GGGGG21(w4[20],1'b0,b[4],result[20]);
mux_2x1_1bit GGGGG22(w4[21],1'b0,b[4],result[21]);
mux_2x1_1bit GGGGG23(w4[22],1'b0,b[4],result[22]);
mux_2x1_1bit GGGGG24(w4[23],1'b0,b[4],result[23]);
mux_2x1_1bit GGGGG25(w4[24],1'b0,b[4],result[24]);
mux_2x1_1bit GGGGG26(w4[25],1'b0,b[4],result[25]);
mux_2x1_1bit GGGGG27(w4[26],1'b0,b[4],result[26]);
mux_2x1_1bit GGGGG28(w4[27],1'b0,b[4],result[27]);
mux_2x1_1bit GGGGG29(w4[28],1'b0,b[4],result[28]);
mux_2x1_1bit GGGGG30(w4[29],1'b0,b[4],result[29]);
mux_2x1_1bit GGGGG31(w4[30],1'b0,b[4],result[30]);
mux_2x1_1bit GGGGG32(w4[31],1'b0,b[4],result[31]);


endmodule
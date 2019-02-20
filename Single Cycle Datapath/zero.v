// Verinin tum bitlerinin 0 olup olmadigi kontrol edilir.
// 32 bit verinin tum bitleri or işlemine sokulur. Eğer herhangi biri 1 ise sonuç 1 hepsi 0 ise sonuç 0 çıkar.
// Bu sonuç not'laranak Z degeri bulunur.
module zero(a,Z);

input[31:0] a;
output Z;
wire[30:0] w;

or G1(w[0],a[0],a[1]);
or G2(w[1],w[0],a[2]);
or G3(w[2],w[1],a[3]);
or G4(w[3],w[2],a[4]);
or G5(w[4],w[3],a[5]);
or G6(w[5],w[4],a[6]);
or G7(w[6],w[5],a[7]);
or G8(w[7],w[6],a[8]);
or G9(w[8],w[7],a[9]);
or G10(w[9],w[8],a[10]);
or G11(w[10],w[9],a[11]);
or G12(w[11],w[10],a[12]);
or G13(w[12],w[11],a[13]);
or G14(w[13],w[12],a[14]);
or G15(w[14],w[13],a[15]);
or G16(w[15],w[14],a[16]);
or G17(w[16],w[15],a[17]);
or G18(w[17],w[16],a[18]);
or G19(w[18],w[17],a[19]);
or G20(w[19],w[18],a[20]);
or G21(w[20],w[19],a[21]);
or G22(w[21],w[20],a[22]);
or G23(w[22],w[21],a[23]);
or G24(w[23],w[22],a[24]);
or G25(w[24],w[23],a[25]);
or G26(w[25],w[24],a[26]);
or G27(w[26],w[25],a[27]);
or G28(w[27],w[26],a[28]);
or G29(w[28],w[27],a[29]);
or G30(w[29],w[28],a[30]);
or G31(w[30],w[29],a[31]);
not N(Z,w[30]);

endmodule
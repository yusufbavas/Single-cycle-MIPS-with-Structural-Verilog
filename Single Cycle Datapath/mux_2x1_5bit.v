// 2x1 5 bit mux. a ve b girdileri 5 bit değerlerdir. s 1 bit seçme biti, result 5 bit sonucu temsil eder.
module mux_2x1_5bit(a,b,s,result);
	
input[4:0] a,b;
input s;
output[4:0] result;
wire not_s;
wire [4:0] n1,n2;
	
not(not_s,s);

and a0(n1[0],a[0],not_s);
and a1(n1[1],a[1],not_s);
and a2(n1[2],a[2],not_s);
and a3(n1[3],a[3],not_s);
and a4(n1[4],a[4],not_s);

and a5(n2[0],b[0],s);
and a6(n2[1],b[1],s);
and a7(n2[2],b[2],s);
and a8(n2[3],b[3],s);
and a9(n2[4],b[4],s);

or a10(result[0],n1[0],n2[0]);
or a11(result[1],n1[1],n2[1]);
or a12(result[2],n1[2],n2[2]);
or a13(result[3],n1[3],n2[3]);
or a14(result[4],n1[4],n2[4]);
	
endmodule
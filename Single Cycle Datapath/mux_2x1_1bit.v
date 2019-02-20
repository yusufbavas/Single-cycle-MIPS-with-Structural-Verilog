// 2x1 mux'un girdileri 1 bit olan versiyonu.
module mux_2x1_1bit(a,b,s,result);
	
input a,b;
input s;
output result;
wire not_s,n1,n2;
	
not(not_s,s);
and a1(n1,a,not_s);
and a2(n2,b,s);
or o1(result,n1,n2);
	
endmodule
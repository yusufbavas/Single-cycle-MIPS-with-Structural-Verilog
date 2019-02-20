module mux_2x1(a,b,s,result);
	
input[31:0] a,b;
input s;
output[31:0] result;
wire not_s;
wire [31:0] n1,n2;
	
not(not_s,s);
	
and_32bit_v2 a1(n1,a,not_s);
and_32bit_v2 a2(n2,b,s);
or_32bit o1(result,n1,n2);
	
endmodule
module mux_8x1(a,b,c,d,e,f,g,h,s,result);
	
input[31:0] a,b,c,d,e,f,g,h;
input [2:0] s;
output[31:0] result;
wire[31:0] r1,r2;
	
mux_4x1 m1(a,b,c,d,s[1],s[0],r1);
mux_4x1 m2(e,f,g,h,s[1],s[0],r2);
mux_2x1 m3(r1,r2,s[2],result);
	
endmodule
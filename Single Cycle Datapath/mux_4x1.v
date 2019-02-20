module mux_4x1(a,b,c,d,s1,s0,result);
	
input[31:0] a,b,c,d;
input s1,s0;
output[31:0] result;
wire[31:0] r1,r2;
	
mux_2x1 m1(a,b,s0,r1);
mux_2x1 m2(c,d,s0,r2);
mux_2x1 m3(r1,r2,s1,result);

endmodule
module full_adder(a,b,carry_in,sum,carry_out);
	
input a,b,carry_in;
output sum,carry_out;
wire s1,c1,c2;

half_adder ha1(a,b,s1,c1);
half_adder ha2(carry_in,s1,sum,c2);
or(carry_out,c1,c2);

endmodule
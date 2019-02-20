// a ve b degerleri bir bit toplanacak degerleri, carry_in elde girisini, sum toplam sonucunu, carry_out elde cıkışını temsil eder.
// Full adder için 2 adet half adder kullanılır. 
module full_adder(a,b,carry_in,sum,carry_out);
	
input a,b,carry_in;
output sum,carry_out;
wire s1,c1,c2;

half_adder ha1(a,b,s1,c1);
half_adder ha2(carry_in,s1,sum,c2);
or(carry_out,c1,c2);

endmodule
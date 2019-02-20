module half_adder(a,b,sum,carry_out);

input a,b;
output sum,carry_out;
xor(sum,a,b);
and(carry_out,a,b);

endmodule
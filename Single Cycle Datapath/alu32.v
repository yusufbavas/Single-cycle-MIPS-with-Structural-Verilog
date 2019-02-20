module alu32(a,b,s,result,V,Z);

input [31:0] a,b;
input [2:0] s;
output [31:0] result;
output V,Z;
wire [31:0] r0,r1,r2,r3,r4,r5,r6,r7;
wire V1,V2;

and_32bit and32(r0,a,b);
or_32bit or32(r1,a,b);
adder_32bit add32(a,b,r2,1'b0,V1);
xor_32bit xor32(r3,a,b);
adder_32bit sub32(a,b,r4,1'b1,V2);
srl s1(a,b[4:0],r5);
sl s2(a,b[4:0],r6);
nor_32bit nor32(r7,a,b);

mux_8x1 mux(r0,r1,r2,r3,r4,r5,r6,r7,s,result);
mux_2x1_1bit VGate(V2,V1,s[1],V);
zero z(result,Z);

endmodule
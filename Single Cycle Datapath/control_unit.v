module control_unit(opcode,function_code,select_bits_ALU,shamt_signal,write_signal,sltu_signal,RegDst,memwrite,imm,memread,ZorS,beq,jmp);

input [5:0] function_code;
input [5:0] opcode;
output [2:0] select_bits_ALU;
output shamt_signal,write_signal,sltu_signal;
output RegDst,memwrite,imm,memread,ZorS,beq,jmp;
wire not_f5,not_f1,not_f2,not_o0,not_o1,not_o2,not_o3,not_o5,t1,t2,t3,t4,t5,t6,t7,t8,t9,x1,r;

not n1(not_f1,function_code[1]);
not n2(not_f2,function_code[2]);
not n3(not_f5,function_code[5]);
not n4(not_o0,opcode[0]);
not n5(not_o1,opcode[1]);
not n6(not_o2,opcode[2]);
not n7(not_o3,opcode[3]);
not n8(not_o5,opcode[5]);

and bq(beq,opcode[2],not_o3);
and jp(jmp,opcode[1],not_o5);

buf b(ZorS,opcode[2]);

and rd(RegDst,not_o0,not_o2);

or im(imm,opcode[0],opcode[3]);

and read(memread,opcode[5],not_o3);

and write(memwrite,opcode[3],opcode[5]);

xor xor1(xr_r,opcode[3],opcode[5]);
and r1(r,not_o0,not_o1,not_o2);
or w(write_signal,xr_r,r);

and slt(sltu_signal,function_code[3],not_o0,not_o2);
and shmt(shamt_signal,not_f5,not_o0,not_o2);

and a1(t1,not_f5,function_code[1],not_o0,not_o2);
and a2(t2,function_code[2],function_code[0],not_o0,not_o2);
and a_op(t7,opcode[0],opcode[2]);
or s0(select_bits_ALU[0],t1,t2,t7);

and a3(t3,not_f1,not_f2,not_o0,not_o2);
and a4(t4,function_code[1],function_code[2],not_o0,not_o2);
and a_op2(t8,opcode[0],not_o2);
or s1(select_bits_ALU[1],t3,t4,t8);
and a5(t5,function_code[1],not_o0,not_o2);
and a6(t6,not_f5,not_o0,not_o2);
and a_op3(t9,opcode[2],not_o3);
or s2(select_bits_ALU[2],t5,t6,t9);

endmodule
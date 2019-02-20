// datapath uygun moduller ile olusturulur.
module mips32_single_cycle(result,clk);

input clk;
output [31:0] result;
wire [31:0]instruction,PC,result_data,resultR,alu_temp,imm32,imm32_s,imm32_z;
wire [2:0]select_bits_ALU;
wire shamt_signal,write_signal,sltu_signal,mem_write,RegDst,imm,mem_read,ZorS,beq_signal,beq_signalZ,jmp_signal;
wire [31:0] read_data_1,read_data_2,write_data,alu1,alu2,shamt_32,sltu_result,result_alu;
wire [4:0] write_reg;
wire V,Z;

nextPC n(PC,imm32_s,beq_signalZ,instruction[25:0],jmp_signal,clk);

mips_instructions ins(instruction,PC);

control_unit cu(instruction[31:26],instruction[5:0],select_bits_ALU,shamt_signal,write_signal,sltu_signal,RegDst,mem_write,imm,mem_read,ZorS,beq_signal,jmp_signal);

mux_2x1_5bit mux4(instruction[20:16],instruction[15:11],RegDst,write_reg);

mips_registers m1(read_data_1, read_data_2,result,instruction[25:21], instruction[20:16], write_reg, write_signal,clk);

concatenate c1(instruction[10:6],shamt_32);

sign_extend sign_e(instruction[15:0],imm32_s);
zero_extend zero_e(instruction[15:0],imm32_z);
mux_2x1 mux8(imm32_s,imm32_z,ZorS,imm32);

mux_2x1 mux1(read_data_1,read_data_2,shamt_signal,alu1);
mux_2x1 mux2(read_data_2,shamt_32,shamt_signal,alu_temp);

mux_2x1 mux6(alu_temp,imm32,imm,alu2);

alu32 alu(alu1,alu2,select_bits_ALU,result_alu,V,Z);

and bq(beq_signalZ,Z,beq_signal);


mips_data mdata(result_data,read_data_2,mem_write,mem_read,result_alu,clk);

concatenate_1bit c2(result_alu[31],sltu_result);

mux_2x1 mux3(result_alu,sltu_result,sltu_signal,resultR);

mux_2x1 mux7(resultR,result_data,mem_read,result);

endmodule
module mips_instructions (instruction,PC);

	output [31:0] instruction;
	input [31:0] PC;

	reg [31:0] instructions [256:0];
	
	buf b1(instruction[0],instructions[PC][0]);
	buf b2(instruction[1],instructions[PC][1]);
	buf b3(instruction[2],instructions[PC][2]);
	buf b4(instruction[3],instructions[PC][3]);
	buf b5(instruction[4],instructions[PC][4]);
	buf b6(instruction[5],instructions[PC][5]);
	buf b7(instruction[6],instructions[PC][6]);
	buf b8(instruction[7],instructions[PC][7]);
	buf b9(instruction[8],instructions[PC][8]);
	buf b10(instruction[9],instructions[PC][9]);
	buf b11(instruction[10],instructions[PC][10]);
	buf b12(instruction[11],instructions[PC][11]);
	buf b13(instruction[12],instructions[PC][12]);
	buf b14(instruction[13],instructions[PC][13]);
	buf b15(instruction[14],instructions[PC][14]);
	buf b16(instruction[15],instructions[PC][15]);
	buf b17(instruction[16],instructions[PC][16]);
	buf b18(instruction[17],instructions[PC][17]);
	buf b19(instruction[18],instructions[PC][18]);
	buf b20(instruction[19],instructions[PC][19]);
	buf b21(instruction[20],instructions[PC][20]);
	buf b22(instruction[21],instructions[PC][21]);
	buf b23(instruction[22],instructions[PC][22]);
	buf b24(instruction[23],instructions[PC][23]);
	buf b25(instruction[24],instructions[PC][24]);
	buf b26(instruction[25],instructions[PC][25]);
	buf b27(instruction[26],instructions[PC][26]);
	buf b28(instruction[27],instructions[PC][27]);
	buf b29(instruction[28],instructions[PC][28]);
	buf b30(instruction[29],instructions[PC][29]);
	buf b31(instruction[30],instructions[PC][30]);
	buf b32(instruction[31],instructions[PC][31]);

endmodule
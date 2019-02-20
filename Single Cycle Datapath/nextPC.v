module nextPC (result,beq_adr,beq_signal,jmp_adr,jmp_signal,clk);

	output reg[31:0] result;
	input clk,beq_signal,jmp_signal;
	input[31:0] beq_adr;
	input[25:0] jmp_adr;
	reg[31:0] PC;
	wire out;
	
initial
begin
	PC = 32'b00000000000000000000000000000000;
end	
always @(posedge clk)
begin
	result = PC;
	PC = PC + 1;

	if (beq_signal == 1'b1)
	begin
		PC = PC + {{beq_adr}};
	end

	if (jmp_signal == 1'b1)
	begin
		PC = {PC[31:26],jmp_adr};
	end

	if(PC > 256)
	begin
		$finish;
	end
end
	
endmodule
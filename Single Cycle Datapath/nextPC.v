// PC hesaplanir.
// instruction sınırı 256 olduğu için simülasyonda 256'ya kadar x görünür.
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
	// Eger beq instructioni ise beq adresi kadar PC arttirilir.
	if (beq_signal == 1'b1)
	begin
		PC = PC + {{beq_adr}};
	end
	// Eger jump instructioni ise PC'in ilk 6 biti ile 26 bitlik adress birlestirilerek PC'a atilir.
	if (jmp_signal == 1'b1)
	begin
		PC = {PC[31:26],jmp_adr};
	end
	// instruction üst limiti 256 olarak aldim. 
	// Bu şekilde simülasyonda instructionlardan sonra 256'ya kadar x gözüküyor.
	// Eğer buraya instruction sayisinin bir fazlası yazılır ise x değerleri olmadan sonuç alınabiliyor.
	if(PC > 256)
	begin
		$finish;
	end
end
	
endmodule
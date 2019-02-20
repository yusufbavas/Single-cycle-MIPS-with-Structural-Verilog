module mips32_single_cycle_testbench ();

wire[31:0] result;
reg clk,clk2;

mips32_single_cycle m32(result,clk);

initial
begin
	clk = 1'b0;
	clk2 = 1'b0;
	$readmemh("instruction.mem",m32.ins.instructions);
	$readmemh("registers.mem",m32.m1.registers);
	$readmemh("data.mem",m32.mdata.data);
end


always #5 clk=~clk;
always #10 clk2=~clk2;

always @(posedge clk2)
begin
	$monitor("instruction: %32b -- result : %32b",m32.instruction,result);
end
endmodule
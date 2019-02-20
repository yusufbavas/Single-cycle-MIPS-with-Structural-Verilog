module mips_data (data_out,data_in,mem_write,mem_read,adr,clk);

	output reg[31:0] data_out;
	input [31:0] data_in,adr;
	input clk;
	input mem_write,mem_read;

	reg [31:0] data[255:0];

always @(negedge clk)
begin
	if (mem_read == 1'b1)
	begin
		data_out = data[adr];
	end
end

always @(posedge clk)
begin
	if (mem_write == 1'b1)
	begin	
		data[adr] = data_in;
		$writememh("data.mem", data);
	end
end
	
endmodule
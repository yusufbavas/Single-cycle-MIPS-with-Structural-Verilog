// memoryden okuma ve yazma islemleri yapilir.
module mips_data (data_out,data_in,mem_write,mem_read,adr,clk);

	output reg[31:0] data_out;
	input [31:0] data_in,adr;
	input clk;
	input mem_write,mem_read;

	reg [31:0] data[255:0];

always @(negedge clk)
begin
	// memoryden okuma yapilacak ise data'nin adresinci elemani sonuca atilir.
	if (mem_read == 1'b1)
	begin
		data_out = data[adr];
	end
end

always @(posedge clk)
begin
	// memorye yazma yapilacak ise datanin adresinci elemanina sonuc yazilarak memory dosyasine yazilir.
	if (mem_write == 1'b1)
	begin	
		data[adr] = data_in;
		$writememh("data.mem", data);
	end
end
	
endmodule
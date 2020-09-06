`include "Ripple_adder_32_bit.v"

module top;
reg [31:0] a, b;
reg cin;
wire [31:0] sum;
wire ca;

Full_32bit_Adder FullAdd_0 (sum, ca, a, b, cin);

initial
begin

	a = 32'd0;
	#5 b = 32'd0; cin = 1'b0;
	
	#5 a = 32'd0;
	#5 b = 32'd1;
	#5 cin = 1'b0;
	#5 a = 32'd1;
	#5 b = 32'd2;
	#5 cin = 1'b0;
	#5 a=32'b11111111111111111111111111111111;
	#5 b=32'b11111111111111111111111111111111;
	#5 cin=1'b1;
	
end

initial
begin
	$monitor ($time, "  a = %b; b = %b; cin = %b; sum = %b; ca = %b", a, b, cin, sum, ca);
	$dumpfile("gtkwave.vcd");
end
	
endmodule




`include "wallace.v"

module tbench;

reg [31:0] a, b;
wire [63:0]out;

wallace test (a, b, out);

initial
begin
	a = 32'd10;
	b = 32'd15;
	#10$display("  a = %b (%d)\n  b = %b (%d)\nout = %b (%d)", a, a, b, b, out, out);
	
	a = 32'd25;
	b = 32'd25;
	#10$display("  \n  a = %b (%d)\n  b = %b (%d)\nout = %b (%d)", a, a, b, b, out, out);
	
	a = 32'd31;
	b = 32'd15;
	#10$display("  \n  a = %b (%d)\n  b = %b (%d)\nout = %b (%d)", a, a, b, b, out, out);
end

endmodule

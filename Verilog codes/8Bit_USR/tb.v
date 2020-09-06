`include "usr.v"

module top;

	wire[7:0] out;
	reg[7:0] pload;
	reg L_in, R_in, clk;
	reg[1:0] select;

	USR_8bit usr0(out, pload, L_in, R_in, select, clk);

	always #5 clk = ~clk;

	initial
	begin
		$monitor($time," select = %2b ..... pload = %8b ..... L_in = %b ..... R_in = %b ..... out = %8b", select, pload, L_in, R_in, out);
	end

	initial
	begin	
		clk =0; select = 2'b01; R_in = 1'b1; 

		#10 select = 2'b01; R_in = 1'b0; 

		#10 select = 2'b01; R_in = 1'b1; 

		#10 select = 2'b01; R_in = 1'b1; 

		#10 select = 2'b01; R_in = 1'b1; 

		#10 select = 2'b01; R_in = 1'b0; 

		#10 select = 2'b01; R_in = 1'b0; 

		#10 select = 2'b01; R_in = 1'b0; 

		#10 select = 2'b01; R_in = 1'b0; 
		
		#10 select = 2'b00;

		#10 select = 2'b10; L_in = 1'b1;

		#10 select = 2'b10; L_in = 1'b1;

		#10 select = 2'b10; L_in = 1'b1;

		#10 select = 2'b10; L_in = 1'b0;

		#10 select = 2'b10; L_in = 1'b0;

	end
	
	initial
		#150 $finish;
endmodule

`include "Sklansky_Adder_16_bit.v"

module top;
	
	reg [15:0] a,b;
	wire [15:0] sum;
	wire cin,cout;
	
	assign cin=1'b0;
	
	initial
	begin
		$dumpfile("Sklansky_Adder_16_bit.vcd");
		$dumpvars(0,top);
	end
	
	sklansky SA(a,b,cin,sum,cout);
	
	initial
		begin
			#10;
			#10
			a=16'd15;
			b=16'd8;
			
			#10;
			#10
			a=16'd200;
			b=16'd490;
			
			#10;
			#10
			a=16'd1981;
			b=16'd5196;
			
			#10;
			#10
			a=16'd5158;
			b=16'd25000;
			
			
			#10;
			#10
			a=16'd2768;
			b=16'd30000;
			
			#10;
			#10
			a=16'd32768;
			b=16'd32767;
		end
		
	initial
		begin
			$monitor($time,"\ta=%d;\tb=%d;\tsum=%d;\tcout=%b\n",a,b,sum,cout);
		end
	
endmodule

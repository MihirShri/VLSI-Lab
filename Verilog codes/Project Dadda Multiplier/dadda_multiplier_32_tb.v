`include "dadda_multiplier_32.v"
module dadda_multiplier_32_tb;

    reg [15:0] in0;
    reg [15:0] in1;
    output [31:0] product;
    output [31:0] chk_product;
    dadda_multiplier_32 dadda0(
        in0, in1, product
    );
    assign chk_product = in0 * in1;
    initial begin
        in0 = 3;
        in1 = 2;
        #5 in0 = 15;
        #5 in1 = 5;
        #5 in0 = 10;
        #5 in1 = 20;
        #5 in0 = 16'hffff;
        #5 in0 = 16'h7fff -1 ;
        #5 in1 = 16'hffff;
        #5 in1 = 10;
        
        
    end
    initial begin
        $monitor($time, " in0= %d \t in1= %d \t product= %d \t Product for check= %d", in0, in1, product, chk_product);
    end

endmodule

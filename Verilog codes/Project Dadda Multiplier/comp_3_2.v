module comp_3_2(
    input in1,
    input in2,
    input in3,
    output sum,
    output c
    );
  
  assign carry = (in1 & in2) | (in2 & in3) | (in3 & in1); 
  assign sum = (in1 & in2 & in3) | (in1 & ~in2 & ~in3) | (~in1 & in2 & ~in3) | (~in1 & ~in2 & in3);
  
endmodule
module full_adder(
    in, cin, sum, cout
);

    input [1:0] in;
    input cin;
    output sum, cout;
    assign sum = in[0] ^ (in[1] ^ cin);
    assign cout = (in[1] & cin) | (in[0] & in[1]) | (in[0] & cin);
    
endmodule

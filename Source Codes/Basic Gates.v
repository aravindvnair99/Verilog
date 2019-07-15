module Basic_Gates(a,b,c,out);
	input a,b,c;
	output out;
	wire out,w1,w2;
	and (w1,a,b,c);
	not (w2,c);
	or (out,w1,w2);
endmodule

module Basic_Gates(a,b,c,and_out,or_out,not_out);
	input a,b,c;
	output and_out,or_out,not_out;
	and (and_out,a,b);
	not (not_out,c);
	or (or_out,a,b);
endmodule

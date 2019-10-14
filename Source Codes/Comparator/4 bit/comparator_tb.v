module comparator_tb;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;

    // Outputs
	wire less;
	wire equal;
	wire greater;

	// Instantiate the Unit Under Test (UUT)
	comparator uut (
		.A(A), 
		.B(B), 
		.less(less), 
		.equal(equal), 
		.greater(greater)
	);

	initial begin
		//Apply inputs
		A = 10;
		B = 12;
		#100;
		A = 15;
		B = 11;
		#100;
		A = 10;
		B = 10;
		#100;
	end

endmodule

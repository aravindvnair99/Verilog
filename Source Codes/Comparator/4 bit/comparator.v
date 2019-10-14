module comparator(
    A,          //input A
    B,          //input B
    less,       //high when A is less than B
    equal,      //high when A is equal to B
    greater     //high when A is greater than B    
    );

    //Input ports
    input [3:0] A;
    input [3:0] B;
    //Output ports
    output less;
    output equal;
    output greater;
    //Internal variables
    reg less;
    reg equal;
    reg greater;

    //When the inputs and A or B are changed execute this block
    always @(A or B)
     begin
        if(A > B)   begin  //check if A is bigger than B.
            less = 0;
            equal = 0;
            greater = 1;    end
        else if(A == B) begin //Check if A is equal to B
            less = 0;
            equal = 1;
            greater = 0;    end
        else    begin //Otherwise - check for A less than B.
            less = 1;
            equal = 0;
            greater =0;
        end 
    end
endmodule

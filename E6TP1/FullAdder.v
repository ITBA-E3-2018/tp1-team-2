module FullAdder (x1,x2,carryIn,f,carryOut);
    input x1,x2,carryIn;
    output f,carryOut;
    wire a,b,c;

    assign c=x1&x2;
    assign a=x1^x2;
    assign b=a&carryIn;
    assign f=a^carryIn;
    assign carryOut=b|c;
endmodule
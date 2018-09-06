module FullAdderTester();
reg x1,x2,carryIn;
wire f,carryOut;
integer i,j,k;
FullAdder myFullAdder(x1,x2,carryIn,f,carryOut);

initial begin
    for(i=0;i<=1;i=i+1)begin
        for(j=0;j<=1;j=j+1)begin
            for(k=0;k<=1;k=k+1)begin
                x1=i;
                x2=j;
                carryIn=k;
                #1 $display("Inputs: x1=%d, x2=%d, carryIn=%d. Outputs: f=%d, carryOut=%d",x1,x2,carryIn,f,carryOut);
            end
        end
    end
end

endmodule
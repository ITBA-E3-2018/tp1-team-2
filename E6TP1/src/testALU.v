//Codigo para testear el codigo implementado en la ALU

module testALU;

    reg x0,x1,x2,x3,y0,y1,y2,y3,op0,op1,op2;
    wire out0, out1, out2, out3, carry;

    ALU testModule(x0,x1,x2,x3,y0,y1,y2,y3,op0,op1,op2,out0, out1, out2, out3, carry);

    initial begin
        x0 = 1 ; x1 = 1; x2 = 1; x3 = 1;//INICIALIZACION DEL PRIMER NIBBLE, HARCODEAR PARA PROBAR
        y0 = 1 ; y1 = 1; y2 = 1; y3 = 0;

        //DEPENDIENDO QUE OPERACIONES SE QUIERA TESTEAR, COMENTAR LAS DEMAS OPERACIONES
        
       /* //AND
        op0 = 0; op1=0;op2=0;
        #1

        //NOT
        op0 = 0; op1=0;op2=1;
        #1

        //OR
        op0 = 0; op1=1;op2=0;
        #1

        //XOR
        op0 = 0; op1=1;op2=1;
        #1

        //SHIFTLEFT
        op0 = 1; op1=0;op2=0;
        #1
*/
        //SUM
        op0 = 1; op1=0;op2=1;
        #1
/*
        //SUBSTRACTION
        op0 = 1; op1=1;op2=0;
        #1
*/
        /*//TWOSCOMPLEMENT
        op0 = 1; op1=1;op2=1;
        #1
*/
    $finish;
    end

    initial begin
        $monitor("AccA: %b %b %b %b; AccB: %b %b %b %b /Op: %b %b %b / Outs: %b %b %b %b  Carry %b",
        x0,x1,x2,x3,y0,y1,y2,y3,op0,op1,op2,out0,out1,out2,out3,carry); 
    end
endmodule
module twosComplement (x1,x2,x3,x4,f1,f2,f3,f4);
    input x1, x2, x3, x4;
    output f1, f2, f3, f4;
    wire nx1,nx2,nx3,nx4;
    not(nx1,x1);
    not(nx2,x2);
    not(nx3,x3);
    not(nx4,x4);
    //First Bit Logic
    wire temp1, temp2, temp3;
    or(temp1,x1,nx2,nx3,nx4);
    and(temp2,x2,x3,x4);
    or(temp3,temp2,nx1);
    and(f1,temp1,temp3); //First Bit output

    //Second Bit Logic
    wire t1,t2,t3;
    or(t1,x2,nx3,nx4);
    and(t2,x3,x4);
    or(t3,t2,nx2);
    and(f2,t1,t3); //Second Bit Output

    //Third Bit Logic
    wire r1,r2;
    or(r1,x3,nx4);
    or(r2,nx3,x4);
    and(f3,r1,r2); //Third Bit Output

    //Four Bit Output
    wire q;
    or(q,nx1,nx2,nx3);
    and(f4,x4,q); //Four Bit Output


endmodule

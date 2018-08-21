module testSUmBit2Bit;

    reg in1, in2;
    wire o1, o2;
    sumBit2Bit hola(in1,in2,o1,o2);

    integer i, j, k;

  initial begin
    for (i = 0; i < 2; i = i + 1) begin
      for (j = 0; j < 2; j = j + 1) begin
          in1= i; in2 = j;
          $display("Input values are: %b %b", in1, in2);
          #1;
      end
    end
    $finish;
    end
    initial begin
    // monitor only executes when one of the input variable changes.
    $monitor("Outs have changed! New values are: %b %b", o1, o2) ;
  end
  endmodule

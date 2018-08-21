module testSum3Bit;


  reg in1, in2, in3;
  wire out1, out2;

  sum3Bit test(in1,in2,in3,out1,out2);

  integer i, j, k;

  initial begin
    for (i = 0; i < 2; i = i + 1) begin
      for (j = 0; j < 2; j = j + 1) begin
        for (k = 0; k < 2; k = k + 1) begin
          in1= i; in2 = j; in3 = k;
          $display("Input values are: %b %b %b", in1, in2, in3);
          #1;
        end
      end
    end
    $finish;
  end

  initial begin
    $monitor("Sum equals: %b %b ", out2, out1) ;
  end
endmodule


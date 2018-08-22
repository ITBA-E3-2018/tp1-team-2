module hello_world;

  // First of all, we define two inputs and an output.
  reg in1, in2, in3, in4;
  wire out1, out2, out3, out4;
    notBitwise test(in1,in2,in3,in4,out1,out2,out3,out4);

  integer i, j, k, h;

  initial begin
    for (i = 0; i < 2; i = i + 1) begin
      for (j = 0; j < 2; j = j + 1) begin
        for (k = 0; k < 2; k = k + 1) begin
          for (h = 0; h < 2; h = h + 1) begin
            in1= i; in2 = j; in3 = k; in4 = h;
            $display("Input values are: %b %b %b %b", in1, in2, in3, in4);
            #1;
          end
        end
      end
    end
    $finish;
  end

  initial begin
    // monitor only executes when one of the input variable changes.
    $monitor("Outs have changed! New values are: %b %b %b %b", out1, out2, out3, out4) ;
  end
endmodule // End of Module hello_world


module testSum;
    
    reg x0,x1,x2,x3,y0,y1,y2,y3;
    wire o0,o1,o2,o3,carry;

    Substraction testModule(x0,x1,x2,x3,y0,y1,y2,y3,o0,o1,o2,o3);
    integer i, j, k, h;
    integer a, s, d, f;

  initial begin
    for (i = 0; i < 2; i = i + 1) begin
      for (j = 0; j < 2; j = j + 1) begin
        for (k = 0; k < 2; k = k + 1) begin
            for (h = 0; h < 2; h = h + 1) begin
                x0 = i; x1 = j; x2 = k; x3 = h;
                $display("---------First bit input values are: %b %b %b %b", x0, x1, x2, x3);
                for (a = 0; a < 2; a = a + 1) begin
                  for (s = 0; s < 2; s = s + 1) begin
                    for (d = 0; d < 2; d = d + 1) begin
                      for (f = 0; f < 2; f = f + 1) begin
                        y0 = a; y1 = s; y2 = d; y3 = f;
                        $display("Second bit input values are: %b %b %b %b", y0, y1, y2, y3);
                        #1;
                      end
                    end
                  end
                end
                #1;
            end
        end
      end
    end


    $finish;
  end

    initial begin
        $monitor("Outs have changed! New values are: %b %b %b %b", o0, o1, o2, o3) ;
        //$monitor("Carry: %b", o4) ;
    end
endmodule
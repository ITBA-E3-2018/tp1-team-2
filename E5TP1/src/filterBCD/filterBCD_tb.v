`include "src/filterBCD/filterBCD.v"

module filterBCD_tb;

reg [3:0] in;
wire[3:0] out;
wire flag;

initial begin
  in = 0;
  $display("BCD Filter Testbench");
  $display("Input\tOutput\tError");
  $monitor("%b %d\t%b\t%b",in, in, out, flag);
end

filterBCD filter_udt(
    .in(in),
    .out(out),
    .error(flag)
    );

always @ (in) begin
    for (in = 0; in<14 ; in = in + 1 ) begin
        #1;
    end
    $finish;
end

endmodule
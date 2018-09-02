`include "src/encoder/encoder.v"

module encoder_tb;

reg [3:0] data_in;
wire [1:0] data_out;

encoder e_0(.encoder_in(data_in), .encoder_out(data_out));

initial begin
    data_in = 4'b0001;
end

always begin
    #1 data_in = 4'b0010;
    #1 data_in = 4'b0100;
    #1 data_in = 4'b1000;
    #1 data_in = 4'b0011;
    #1 data_in = 4'b0101;
    #1 data_in = 4'b1001;
    #1 data_in = 4'b0110;
    #1 data_in = 4'b1010;
    #1 data_in = 4'b1100;
    #10 $finish;
end

initial begin
  $dumpfile("encoder.vcd");
  $dumpvars;
end

initial begin
  $display("Input\tOutput\tValue");
  $monitor("%b\t%b\t%d",data_in, data_out, data_out);
end

endmodule

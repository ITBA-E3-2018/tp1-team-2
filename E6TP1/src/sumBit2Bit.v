module sumBit2Bit(x1, x2, o0, o1);
	input x1,x2;
	output o1,o2;
	always @(x1 or x2) begin
		if(x1 == 0) begin
			o0 = 0;
			o1 = x2;
		else
			o0 = x2;
			if(x2 == 1) begin
				o1 = 0;
			else
				o1 = 1;
			end
		
	  end
	end
endmodule

	



BINDIR = bin
SRCDIR = src

COMPILER = iverilog

all:
	$(COMPILER) $(SRCDIR)/adderBCD/adderBCD_tb.v 	-o $(BINDIR)/adderBCD.out
	$(COMPILER) $(SRCDIR)/decoderBCD/decoderBCD_tb.v	-o $(BINDIR)/decoderBCD.out
	$(COMPILER) $(SRCDIR)/filterBCD/filterBCD_tb.v	-o $(BINDIR)/filterBCD.out
	$(COMPILER) $(SRCDIR)/sum4bit/sum4bit_tb.v	-o $(BINDIR)/sum4bit.out
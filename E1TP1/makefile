# This makefile is inspired from: https://stackoverflow.com/questions/7004702/how-can-i-create-a-makefile-for-c-projects-with-src-obj-and-bin-subdirectories

# project name (generate executable with this name)
TARGET   = executable

COMPILER = g++
CFLAGS   =

# change these to proper directories where each file should be
SRCDIR   = .
BINDIR   = .

SOURCES  := $(wildcard $(SRCDIR)/*.cpp)
OBJECTS  := $(SOURCES:$(SRCDIR)/%.c=$(OBJDIR)/%.o)
rm       = rm -f

$(BINDIR)/$(TARGET): $(SOURCES)
	@$(COMPILER) $(SOURCES) $(CFLAGS) -o $@
	@echo "Compilation complete!"

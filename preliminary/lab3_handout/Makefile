# Compiler
CC = gcc

CFLAGS = -std=c99 -g -O2 -Wall -Werror

# default target; prerequisite: lab3
# note: target does not execute anything
all: lab3
	# Don't change this line!
	@echo "Good Luck in x13!"

# creates lab3.s file from lab3.c
lab3.s: lab3.c
	# creates .s file from lab3.c
	# renames the output lab3.s
	$(CC) $(CFLAGS) -E lab3.c

# creates lab3_helper.s file from lab3_helper.c and lab3_helper.h
lab3_helper.s: lab3_helper.c lab3_helper.h
	# TODO: create lab3_helper.s from lab3_helper.c
	# TODO: make sure to name the output lab3_helper.s
	$(CC) $(CLFLAGS) -E lab3_helper lab3_helper.c lab3_helper.h

# creates lab3_helper.o file from lab3_helper.s
lab3_helper.o: lab3_helper.s
	# TODO: Fill in the name of the assembly file
	# TODO: Rename the output file to a .o file!
	$(CC) $(CFLAGS) -c lab3_helper.s

# creates lab3.o file from lab3.s
lab3.o: lab3.s
	# TODO: Fill in the missing flags & names!
	$(CC) $(CFLAGS) -c lab3.s 

# creates lab3 executable from lab3.o and lab3_helper.o
lab3_final: lab3.o lab3_helper.o
	# creates an executable file that links lab3.o and lab3_helper.o
	# renames the output to lab3.o
	# TODO: Tell the compiler which .o files to link.
	$(CC) $(CFLAGS) -o lab3 lab3.o lab3_helper.o

# Concise compilation rule
# Creates a lab3 executable file that depends on lab3.c lab3_helper.c and
# lab3_helper.h
lab3: lab3.c lab3_helper.c lab3_helper.h
	# creates an executable file named lab3 from lab3.c and lab3_helper.c files
	# TODO: Tell the compiler which .c files to compile.
	$(CC) $(CFLAGS) -o lab3 lab3.c lab3_helper.c

# fill in the .PHONY statement!
.PHONY: all clean
clean:
	rm -f lab3 lab3_helper *.o

# Compiler
CC = gcc

CFLAGS = -std=c99 -g -O2 -Wall -Werror

lab3: lab3.o lab3_helper.o
	$(CC) $(CFLAGS) -o lab3 lab3.c lab3_helper.c

lab3_helper.o: lab3_helper.s lab3_helper_preprocessor.txt
	$(CC) $(CFLAGS) -c lab3_helper.s
	objdump -s lab3_helper.o > objdump_lab3_helper.txt
	rm -f lab3_helper.o

lab3.o: lab3.s lab3_preprocessor.txt
	$(CC) $(CFLAGS) -c lab3.s
	objdump -s lab3.o > objdump_lab3.txt
	rm -f lab3.o

lab3.s: lab3.c lab3.h
	$(CC) $(CFLAGS) -S lab3.c

lab3_helper.s: lab3_helper.c lab3_helper.h
	$(CC) $(CFLAGS) -S lab3_helper.c

lab3_preprocessor.txt: lab3.c lab3.h
	$(CC) $(CFLAGS) -E lab3.c > lab3_preprocessor.txt

lab3_helper_preprocessor.txt: lab3_helper.c lab3_helper.h
	$(CC) $(CFLAGS) -E lab3_helper.c > lab3_helper_preprocessor.txt

.PHONY: all clean
all: lab3
	@echo "Makefile bootcamp!"
clean:
	rm -f lab3 lab3_final *.o *.s *.txt

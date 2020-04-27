all: main

LIBS := -pthread
CFLAGS := -Wall
CC := gcc

main: main.o file1.o file2.o
	$(CC) $(CFLAGS) main.o file1.o file2.o -o main $(LIBS)

main.o: main.c
	$(CC) $(CFLAGS) -c main.c

file1.o: file1.c file1.h
	$(CC) $(CFLAGS) -c file1.c

file2.o: file2.c file2.h
	$(CC) $(CFLAGS) -c file2.c

clean:
	rm -f *.o main


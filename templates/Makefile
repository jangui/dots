all: main.o file1.o file2.o
	g++ main.o file1.o file2.o [options]

main.o: main.cpp
	g++ -c main.cpp

file1.o: file1.cpp file1.h
	g++ -c file1.cpp

file2.o: file2.cpp file2.h
	g++ -c file2.cpp

clean:
	rm -f  main.o file1.o file2.o 


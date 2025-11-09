all: main clean

.PHONY: clean

string_utils.o: src/string_utils.f90
	gfortran -o string_utils.o -c -Ofast src/string_utils.f90
	

main.o: string_utils.o src/main.f90
	gfortran -o main.o -c -Ofast src/main.f90

main: main.o string_utils.o
	gfortran -o main string_utils.o main.o

clean:
	rm -rf *.o *.mod
	

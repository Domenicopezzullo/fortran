all: main clean

.PHONY: clean

char_utils.o: src/char_utils.f90
	gfortran -o char_utils.o -c -Ofast src/char_utils.f90 -Wall -Wextra

string_utils.o: src/string_utils.f90
	gfortran -o string_utils.o -c -Ofast src/string_utils.f90 -Wall -Wextra
	

main.o: string_utils.o src/main.f90 char_utils.o
	gfortran -o main.o -c -Ofast src/main.f90 -Wall -Wextra

main: main.o string_utils.o char_utils.o
	gfortran -o main string_utils.o main.o char_utils.o -Wall -Wextra

clean:
	rm -rf *.o *.mod
	

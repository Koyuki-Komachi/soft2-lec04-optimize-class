bin/optimizer: bin/main.o bin/func.o bin/optimize.o
	gcc bin/main.o bin/func.o bin/optimize.o -o bin/optimizer -lm

bin/func.o: src/func.c 
	gcc -c -I./include src/func.c -o bin/func.o 

bin/optimize.o: src/optimize.c
	gcc -c -I./include src/optimize.c -o bin/optimize.o 

bin/main.o: src/main.c
	gcc -c -I./include src/main.c -o bin/main.o 

PHONY: clean

clean: 
	rm bin/*
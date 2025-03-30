CC=clang
CFLAGS=-Wall -g

all: mainapp
	./a.out
	make clean

mainapp: main.o tools.o
	$(CC) $(CFLAGS) main.o tools.o

main.o: main.c
	$(CC) $(CFLAGS) -c main.c

tools.o: tools.c
	$(CC) $(CFLAGS) -c tools.c

clean:
	rm a.out *.o mainapp

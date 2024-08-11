OBJS = main.o output.o calculator.o 
BINARY = main

x = hola
y := $(x) Adios
x = adios

CFLAGS = -g -Wall
LDFLAGS = -lSDL2 -lSDL2main

all: main

# This rule compiles the main program
main: $(OBJS)
		gcc $(CFLAGS) -o $(BINARY) $(OBJS)

main.o: main.c functions.h
		gcc $(CFLAGS) -c main.c

output.o: output.c functions.h
		gcc $(CFLAGS) -c output.c

calculator.o: calculator.c functions.h
		gcc $(CFLAGS) -c calculator.c

clean:
		rm $(BINARY) $(OBJS)

print: 
		@echo $(x)
		@echo $(y)
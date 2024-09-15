OBJS = main.o output.o calculator.o 
BINARY = main

CC = gcc
CFLAGS = -g -Wall

all: main

# This rule compiles the main program
main: $(OBJS)
		$(CC) $(CFLAGS) -o $(BINARY) $(OBJS)

main.o: main.c functions.h

output.o: output.c functions.h

calculator.o: calculator.c functions.h

clean:
		rm -f $(BINARY) $(OBJS)
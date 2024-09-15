# Directories
SRC_DIR = src
INC_DIR = inc

# Files
SOURCES = $(wildcard $(SRC_DIR)/*.c)
OBJS = $(SOURCES:$(SRC_DIR)/%.c=$(SRC_DIR)/%.o) 
BINARY = main

# Compiler and Flags
CC = gcc
CFLAGS = -g -Wall

# Default target
all: $(BINARY) clean

# This rule compiles the main program
$(BINARY): $(OBJS)
	$(CC) $(CFLAGS) -o $(BINARY) $(OBJS)

# Rule to compile objects
$(SRC_DIR)/%.o: $(SRC_DIR)/%.c $(INC_DIR)/functions.h
	$(CC) $(CFLAGS) -I$(INC_DIR) -c $< -o $@

#Rule to clean up .o generated files
clean:
	rm -f $(OBJS)

#Rule to clean up all generated files
clean_all:
	rm -f $(BINARY) $(OBJS)

.PHONY: all clean
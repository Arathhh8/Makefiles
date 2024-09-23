# Directories
SRC_DIR = src
INC_DIR = inc

# Output directory
BIN_DIR = bin

# Files
SOURCES = $(wildcard $(SRC_DIR)/*.c)
OBJS = $(SOURCES:$(SRC_DIR)/%.c=$(SRC_DIR)/%.o) 
BINARY = main

# Compiler and Flags
CC = gcc
CFLAGS = -g -Wall

.PHONY: all clean clean_all

# Default target
all: $(BINARY)

# This rule compiles the main program
$(BINARY): $(BIN_DIR) $(OBJS)
	$(CC) $(CFLAGS) -o $(BIN_DIR)/$(BINARY) $(OBJS)

# Rule to compile objects
$(SRC_DIR)/%.o: $(SRC_DIR)/%.c $(INC_DIR)/functions.h
	$(CC) $(CFLAGS) -I$(INC_DIR) -c $< -o $@

$(BIN_DIR):
	mkdir -p $(BIN_DIR)

# Rule to clean generated data
clean:
	rm -rf $(BINARY) $(OBJS) $(BIN_DIR)
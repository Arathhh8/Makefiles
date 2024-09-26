# Directories
SRC_DIR = src
INC_DIR = inc
OBJ_DIR = obj

# Output directory
BIN_DIR = bin

# Files
SOURCES = $(wildcard $(SRC_DIR)/*.c)
OBJS = $(SOURCES:$(SRC_DIR)/%.c=$(OBJ_DIR)/%.o) 
BINARY = main

# Compiler and Flags
CC = gcc
CFLAGS = -g -Wall

.PHONY: all run clean

# Default target
all: $(BINARY)

# This rule compiles the main program
$(BINARY): $(BIN_DIR) $(OBJS)
	$(CC) $(CFLAGS) -o $(BIN_DIR)/$(BINARY) $(OBJS)

# Rule to compile objects
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c $(INC_DIR)/functions.h | $(OBJ_DIR)
	$(CC) $(CFLAGS) -I$(INC_DIR) -c $< -o $@

# Ensure the binary directory exists
$(BIN_DIR):
	mkdir -p $(BIN_DIR)

# Ensure the object directory exists
$(OBJ_DIR):
	mkdir -p $(OBJ_DIR)

run: $(BINARY)
	@if [ -f $(BIN_DIR)/$(BINARY) ]; then \
		./$(BIN_DIR)/$(BINARY); \
	else \
		echo "Error: Binary '$(BINARY)' not found."; \
	fi

# Rule to clean generated data
clean:
	rm -rf $(OBJ_DIR) $(BIN_DIR)
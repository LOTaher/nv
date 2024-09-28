CC = gcc
CFLAGS = -Wall -Wextra -g -Iinclude
SRC = src/main.c  # will add more files
OBJ = $(SRC:src/%.c=bin/%.o)
EXEC = build/main

all: $(EXEC)

$(EXEC): $(OBJ)
	$(CC) $(OBJ) -o $(EXEC)

bin/%.o: src/%.c
	@mkdir -p bin
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf bin/* build/*

.PHONY: all clean

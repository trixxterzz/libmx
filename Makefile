.PHONY = all clean uninstall reinstall
LIB := minilibmx.a
SRC := $(wildcard src/*.c)
OBJ := $(patsubst src/%.c,%.o,$(wildcard src/*.c))


all: MINILIBMX
MINILIBMX: allo 
	ar rc minilibmx.a $(OBJ) inc/libmx.h
	mkdir obj 
	mv $(OBJ) obj

allo:
	clang -std=c11 -Wall -Werror -Wextra -Wpedantic -c $(SRC)
clean: 
	rm -f 
uninstall: clean
	rm -f $(LIB) 
	rm -drf obj 
reinstall: uninstall MINILIBMX
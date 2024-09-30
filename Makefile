# This is the build file for a Linux system
# This make file is not compatible with MacOS!

CC = gcc
CFLAGS = -Wall -std=c11

# Only for MacOS
# Include paths
#INCLUDE = -I/opt/homebrew/include

# Library paths and libraries
LIBPATH = -L/opt/homebrew/lib
LIBS = -lglfw -lGLEW -lcglm -lOpenGL -lm

all: main

main: main.c
	$(CC) $(CFLAGS) main.c -o genesis $(INCLUDE) $(LIBPATH) $(LIBS)

clean:
	rm -f main

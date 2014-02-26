CC = gcc
FILES = readfile.c
OUT_EXE = readfile

build: $(FILES)
	$(CC) -o $(OUT_EXE) $(FILES)

clean:
	rm -f *.o core

rebuild: clean build

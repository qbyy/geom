CC = gcc 
CFLAGS = -Wall -Werror
EXECUTABLE = bin/main.exe 
DIR = build/
DAR = src/
DUR = bin/


all: $(EXECUTABLE) 

$(EXECUTABLE): $(DIR)main.o  $(DIR)func.o
	$(CC) $(CFLAGS) -o $(EXECUTABLE) $(DIR)main.o $(DIR)func.o -lm

$(DIR)main.o: $(DAR)main.c 
	$(CC) $(CFLAGS) -c -o $(DIR)main.o $(DAR)main.c -lm

$(DIR)func.o: $(DAR)func.c
	$(CC) $(CFLAGS) -c -o $(DIR)func.o $(DAR)func.c -lm

.PHONY : clean
clean:
	rm -rf $(EXECUTABLE) $(DIR)*.o

CC = gcc 
CFLAGS = -Wall -Werror
EXECUTABLE = bin/main.exe 
EXECUTABLE_2 = bin/test_main
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
test:$(EXECUTABLE_2)

$(EXECUTABLE_2): $(DIR)main.o  $(DIR)func.o
	$(CC) $(CFLAGS) -o $(EXECUTABLE) $(DIR)main.o $(DIR)func.o -lm

$(DIR)main.o: $(DAR)main.c 
	$(CC) $(CFLAGS) -I thirdparty -I src -c $(A)main.c -o $(OTD)main.o  -lm

$(DIR)func.o: $(DAR)func.c
	$(CC) $(CFLAGS) -I thirdparty -I src -c $(A)func.c -o $(OTD)func.o  -lm


.PHONY : clean
clean:
	rm -rf $(EXECUTABLE) $(OD)*.o
	rm -rf $(OD)*.o $(EXECUTABLE) $(EXECUTABLE_2)




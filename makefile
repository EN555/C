FLAGS = -Wall -g
LIBOBJECTS = power.o basicMath.o
AR= ar
CC = gcc

all: mains maind

mains: main.o libmyMath.a
	$(CC) $(FLAGS) $^ -o $@ 	

maind: main.o libmyMath.so
	 $(CC) $(FLAGS) $^ -o $@

libmyMath.a: $(LIBOBJECTS)
	$(ar) $(FLAGS) rcs libmyMath.a -o $(LIBOBJECTS)   	

libmyMath.so: $(LIBOBJECTS) 
	$(CC) $(FLAGS) -shared libmyMath.a -o $(LIBOBJECTS)

main.o: main.c myMath.h
	$(CC) $(FLAGS) -c $<

power.o: power.c 
	$(CC) $(FLAGS) -c $^ 

basicMath.o: basicMath.c
	$(CC) $(FLAGS) -c $^  

.PHONY: clean all

clean: 
	*.o mains maind *lib*


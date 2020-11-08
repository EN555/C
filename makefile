FLAGS = -Wall -g
LIBOBJECTS = power.o basicMath.o
AR= ar
CC = gcc

all: mains maind

mains: main.o libmyMath.a
	$(CC) $(FLAGS) -o $@ $^	

maind: main.o libmyMath.so
	 $(CC) $(FLAGS) -o $@  $< ./libmyMath.so

libmyMath.a: $(LIBOBJECTS)
	$(AR) -rcs libmyMath.a $(LIBOBJECTS)   	

libmyMath.so: $(LIBOBJECTS) 
	$(CC) -shared -o libmyMath.so $(LIBOBJECTS)

main.o: main.c myMath.h
	$(CC) $(FLAGS) -c $<

power.o: power.c 
	$(CC) $(FLAGS) -c power.c 

basicMath.o: basicMath.c
	$(CC) $(FLAGS) -c $^  

.PHONY: clean all

clean: 
	rm *.o mains maind *lib*


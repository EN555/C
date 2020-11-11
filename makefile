FLAGS = -Wall -g
LIBOBJECTS = power.o basicMath.o
AR= ar
CC = gcc

all: mains maind

mains: main.o mymaths
	$(CC) $(FLAGS) -o $@ $< libmyMath.a	

maind: main.o mymathd
	 $(CC) $(FLAGS) -o $@  $< ./libmyMath.so

mymaths: libmyMath.a  	

mymathd: libmyMath.so 

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

.PHONY: clean all mymaths mymathd 

clean: 
	rm -f *.o *.a *.so mains maind *lib*


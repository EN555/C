FLAGS = -Wall -g
LIBOBJECTS = power.o basicMath.o
AR= ar
CC = gcc

all: mains maind

mains: main.o libmyMath.a				#create main with static library
	$(CC) $(FLAGS) main.o libmyMath.a -o mains	

maind: main.o libmyMath.so 				#create main with dinamy library
	$(CC) $(FLAGS) main.o ./libmyMath.so -o maind    

mymaths: libmyMath.a  	

mymathd: libmyMath.so 

libmyMath.a: $(LIBOBJECTS)				#create static library
	$(AR) -rcs libmyMath.a $(LIBOBJECTS)   	

libmyMath.so: $(LIBOBJECTS) 						#create dinamy library
	$(CC) $(FLAGS) -shared -o libmyMath.so $(LIBOBJECTS)

main.o: main.c myMath.h					#create the main object 	
	$(CC) $(FLAGS) -c $<

power.o: power.c 					
	$(CC) $(FLAGS) -fPIC -c power.c 

basicMath.o: basicMath.c 
	$(CC) $(FLAGS) -fPIC -c $^  

.PHONY: clean all mymaths mymathd 

clean: 
	rm -f *.o *.a *.so mains maind *lib*


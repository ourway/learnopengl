run: hello_world
	./hello_world

hello_world: hello_world.o glad.o
	gcc -o hello_world -lglfw hello_world.o glad.o

hello_world.o: hello_world.cpp
	g++ -c hello_world.cpp -o hello_world.o

glad.o: glad.c
	gcc -c -o glad.o glad.c

clean: 
	rm hello_world *.o
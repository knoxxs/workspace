compile:server client

server:server.o QuizServer.o
	gcc -o server server.o QuizServer.o

server.o:server.c QuizServer.h
	gcc -c server.c

QuizServer.o:QuizServer.c QuizServer.h
	gcc -c QuizServer.c

client:client.o
	gcc -o client client.o

client.o:client.c
	gcc -c client.c

client2:client2.o
	gcc -o client2 client2.o

client2.o:client2.c
	gcc -c client2.c
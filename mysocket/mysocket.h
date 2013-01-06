#ifndef socket_born
#define socket_born
	#include <socket.h>
#endif

#ifndef types_born
#define types_born
	#include <types.h>
#endif


int defaultSocket4_TCP();
int defaultSocket6_TCP();
int SocketUsing_addrinfo(struct addrinfo socketInfo);
int defaultSocket4_UDP();
int defaultSocket6_TCP();

#endif
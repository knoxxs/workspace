#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <error.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <netdb.h>

#define SERVERPORT "4950" //the port the user will be connecting to

int main(int argc,char *argv[])
{
	int sockfd;
	struct addrinfo hints, *servinfo, *p; 
	int rv;
	int numbytes;

	if(argc != 3) {
		fprintf(stderr,"usage: talker hostname message\n");
		exit(1);
	}

	memset(&hints, 0, sizeof hints);
	hints.ai_family = AF_UNSPEC;
	hints.ai_socktype = SOCK_DGRAM;

	if((rv = getaddrinfo(argv[1], SERVERPORT, &hints, &servinfo)) != 0) {
		fprintf(stderr,"getaddrinfo: %s\n", gai_strerror(rv));
		return 1;
	}

	//loop through all the result and make a scoket
	for(p = servinfo; p != NULL; p = p->ai_next)
	{
		if((sockfd = socket(p->ai_family, p->ai_socktype, p->ai_protocol)) == -1) {
			perror("talker : socket");
			continue;
		}
	break;
	
	}

	if(p == NULL) {
		fprintf(stderr, "talkker: failed to bind socket\n");
		return 2;
	}

	if((numbytes = sendto(sockfd, argv[2], strlen(argv[2]), 0, p->ai_addr, p->ai_addrlen)) == -1) {
		perror("talker : sendto");
	}
	
	freeaddrinfo(servinfo);

	printf("talker: send %d bytes to %s\n", numbytes, argv[1]);
	close(sockfd);
	
	return 0;
}

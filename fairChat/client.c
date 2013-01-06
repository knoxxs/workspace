#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>
#include <netdb.h>
#include <sys/types.h>
#include <netinet/in.h>
#include <sys/socket.h>
#include <arpa/inet.h>

#define PORT "3490" //the port client will be connecting to

#define MAXDATASIZE 100 // max number of bytes we can get at once

//get sockaddr ,IPv4 or IPv6:
void *get_in_addr(struct sockaddr *sa)
{
	if(sa->sa_family ==AF_INET) {
		return &(((struct sockaddr_in*)sa)->sin_addr);
	}
	
	return &(((struct sockaddr_in6*)sa)->sin6_addr);
}

wrongRecv(ssize_t recvd, ssize_t expctd)
{

	if(recvd != expctd)
	{
		printf("Recvd(%zd) bytes not equal to expected(%zd) bytes\n",recvd,expctd);
		getchar();
	}
}

void rtt_check(int sockfd)
{
	ssize_t send_ret, recv_ret;
	char rtt_check[1];
	recv_ret = recv(sockfd, rtt_check, 1,0);
	wrongRecv(recv_ret,1);
	sleep(1);//to check
	send_ret = send(sockfd, "r", 1, 0);
	wrongRecv(send_ret, 1);

	return;
}

int main(int argc, char *argv[])
{
	int sockfd, numbytes;
	char buf[MAXDATASIZE];
	struct addrinfo hints, *servinfo, *p;
	int rv;
	char s[INET6_ADDRSTRLEN];

	if(argc != 2) {
		fprintf(stderr,"usage: client hostname\n");
		exit(1);
	}

	memset(&hints, 0, sizeof hints);
	hints.ai_family = AF_UNSPEC;
	hints.ai_socktype = SOCK_STREAM;

	if((rv = getaddrinfo(argv[1], PORT, &hints, &servinfo)) != 0) {
		fprintf(stderr,"getaddrinfo: %s\n",gai_strerror(rv));
		return 1;
	}

	//lopp through all the results and connect to the first we can
	for(p = servinfo; p != NULL; p = p->ai_next) {
		if((sockfd = socket(p->ai_family, p->ai_socktype, p->ai_protocol)) == -1){
			perror("client: socket");
			continue;
		}

		if(connect(sockfd, p->ai_addr, p->ai_addrlen) == -1){
			close(sockfd);
			perror("client: connect");
			continue;
		}

		break;
	}
	
	if(p ==NULL) {
		fprintf(stderr,"client: failed to connect\n");
		return 2;
	}

	inet_ntop(p->ai_family, get_in_addr((struct sockaddr *)p->ai_addr), s, sizeof s);
	printf("client : connecting to %s\n", s);

	freeaddrinfo(servinfo); // all done with this structure
	char login_det[17] = "abhishekabhishek";
	char login_retMsg[7], login_stat[3], totalQuesMsg[5];
	int totalQues;

	//sending login details
	ssize_t send_ret,recv_ret;
	send_ret = send(sockfd, login_det,16,0);
	wrongRecv(send_ret,16);

	//receiving login status
	recv_ret = recv(sockfd,login_retMsg,7,0);
	wrongRecv(recv_ret,7);

	strncpy(login_stat, login_retMsg, 2);
	login_stat[2] = '\0';
	printf("Login Status(%s)\n",login_stat);
	strncpy(totalQuesMsg, login_retMsg + 2, 5);
	totalQues = atoi(totalQuesMsg);
	printf("totalQues(%d)\n",totalQues);

	if(!strcmp(login_stat,"OK")) {  //login ok
		char quesId[5], scoreMsg[5];
		int maxQues_Len = 40, maxOpt_len = 10, maxQuesId_len = 5, maxScore_len = 5;//including '\0' this time
		char quesMsg[80], selectedOption[1];//score doesnot include \0
		char ques[40], optA[10], optB[10], optC[10], optD[10];
		char answer[6], result[10];

		while(totalQues--) {
			//checking rtt
			rtt_check(sockfd);
			//receving question
			recv_ret = recv(sockfd, quesMsg,  maxQues_Len + 4 * maxOpt_len + maxQuesId_len + maxScore_len ,0);
			wrongRecv(recv_ret,  maxQues_Len + 4 * maxOpt_len + maxQuesId_len + maxScore_len);
			strncpy(quesId,quesMsg,5);
			strncpy(ques, quesMsg + 05, 40);
			strncpy(optA, quesMsg + 45, 10);
			strncpy(optB, quesMsg + 55, 10);
			strncpy(optC, quesMsg + 65, 10);
			strncpy(optD, quesMsg + 75, 10);
			strncpy(scoreMsg, quesMsg + 85, 5);
			printf("QUESID(%s) Question(%s), A(%s) , B(%s) , C(%s) , D(%s) Score(%s)\n", quesId, ques, optA, optB, optC, optD, scoreMsg);

			//choose answer
			selectedOption[0] = 'B';

			strncpy(answer,quesId, 5);
			answer[5] = selectedOption[0];
			sleep(5);

			//sending answer
			send_ret = send(sockfd, answer,6,0);
			wrongRecv(send_ret,6);
			printf("%s\n","Answer Message Sent" );
			

			// if((numbytes = recv(sockfd, buf, MAXDATASIZE-1, 0)) == -1) {
			// 	perror("recv");
			// 	exit(1);
			// }

			// buf[numbytes] = '\0';

			// printf("client: received '%s'\n",buf);
		}

		//receiving results
		recv_ret = recv(sockfd, result, 10, 0);
		wrongRecv(recv_ret,10);
		printf("##########_____RESULTS_____##########\n");
		printf("Your Final Score : %s\n",result + 5);
		printf("Winner is : %s\n",result);
		

	} 
	//TODO wrong login
	close(sockfd);
	return 0;
}

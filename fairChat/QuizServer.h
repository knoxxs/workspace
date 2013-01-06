#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <error.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h>
#include <arpa/inet.h>
#include <sys/wait.h>
#include <signal.h>
#include <time.h>

#define PORT "3490" //the port user will be connecting to
#define BACKLOG 10  //how many pending connection queue will hold
#define maxUser 10
#define LOGIN_OK "OK"
#define LOGIN_WrongPassword "NP"
#define LOGIN_WrongUsername "NU"
#define MAX_USERS 10
#define MAX_ANSWER_TIME 10
#define LOGIN_WAIT 10
#define TOTAL_QUES "3"

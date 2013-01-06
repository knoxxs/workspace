#include "QuizServer.h"

int users[MAX_USERS][3] = {};  //index is userID, 0 is no user

void sigchld_handler(int s)
{
	while(waitpid(-1, NULL, WNOHANG) > 0);
}

//get sockaddr, IPv4 or IPv6

int timer;
void alarm_handler(int s) {
	timer = 0;
}

wrongRecv(ssize_t recvd, ssize_t expctd)
{

	if(recvd != expctd)
	{
		printf("Recvd(%zd) bytes not equal to expected(%zd) bytes\n",recvd,expctd);
		//getchar();
	}
}

//void nextQues(char* quesMsg, char* ques, char* optA, char* optB, char* optC, char* optD)
int nextQues(char* quesMsg, int QID, int user_fd)
{
	int i, userId, score;
	char ques[40], optA[10], optB[10], optC[10], optD[10], quesId[5], scoreMsg[5];

	for (i = 0; i < MAX_USERS; i++)	{
		if(users[i][1] == user_fd) {
			//userId = i;
			score = users[i][0];
			sprintf(scoreMsg,"%d", score);
		}
	}

	sprintf(quesId,"%d",QID);
	strncpy(ques, "This is the question?",22);
	strncpy(optA, "OptionA", 7);	strncpy(optB, "OptionB", 7);	strncpy(optC, "OptionC", 7);	strncpy(optD, "OptionD", 7);
	strncpy(quesMsg,quesId,5);
	strncpy(quesMsg + 05,ques,40);
	strncpy(quesMsg + 45,optA,10);
	strncpy(quesMsg + 55,optB,10);
	strncpy(quesMsg + 65,optC,10);
	strncpy(quesMsg + 75,optD,10);
	strncpy(quesMsg + 85,scoreMsg,5);
	return 0;
}

//void answerCheck(char* ques, char* optA, char* optB, char* optC, char* optD, char* usrResponse, int rtt, int timeTaken)
void answerCheck(int fd, char usrResponse[6], int rtt, int timeTaken)
{
	int responseTime, i;
	char actualAnswer[1];
	char quesId[5];
	printf("fd(%d) quesid(%s) response(%c) rtt(%d) timeTaken(%d)\n", fd, usrResponse, usrResponse[5], rtt, timeTaken );
	strncpy(quesId, usrResponse, 5);
	actualAnswer[0] = 'B';//we have quesId we can find actual answer on basis of it

	if(actualAnswer[0] == usrResponse[5])
	{
		//printf("%s\n","+++++" );
		responseTime = timeTaken - rtt;
		//printf("Response Time(%d)\n",responseTime);
		
		//save it with user id

		//finding userid
		for(i = 0; i < MAX_USERS; i++) {
			if(users[i][1] == fd) {
				users[i][2] = responseTime;//saving it
				//printf("%d\n",i );
			}
		}
	}
}

int compareAnswer() {
	int i, min = 2 * MAX_ANSWER_TIME, userIndex;
	for(i = 0; i < MAX_USERS; i++) {
		if(users[i][1] > 0) {
			//printf("userId(%d) score(%d) fd(%d) time(%d)\n", i, users[i][0], users[i][1], users[i][2]);
			if(users[i][2] < min) {
				min = users[i][2];
				userIndex = i;
			}
		}
	}
	//Increasing Score
	users[userIndex][0]++;

	//returning fd
	return users[userIndex][1];
}

void declareWinner(fd_set master, int fdmax) {
	int i, max = 0, userIndex, send_ret, j;
	char yourScore[5],winnerId[5];
	char result[10];

	for(i = 0; i < MAX_USERS; i++) {
		if(users[i][1] > 0) {
			//printf("userId(%d) score(%d) fd(%d) time(%d)\n", i, users[i][0], users[i][1], users[i][2]);
			if(users[i][0] > max) {
				max = users[i][0];
				userIndex = i;
			}
		}
	}

	//Sending winner to all

	sprintf(result, "%d", userIndex);
	timer = 1;
	alarm(10);//sending result for five seconds
	while(timer) {
		if(select(fdmax+1, NULL, &master, NULL, NULL) <=0){
				perror("select");
				//exit(4);
				break;//break is important. Explained above
		}

		for(i = 0; i <= fdmax; i++) {
			if(FD_ISSET(i, &master)) {
				for(j = 0; j < MAX_USERS; j++) {
					if(users[j][1] == i) {
						sprintf(result+5, "%d", users[j][0]);
						break;
					}
				}

				send_ret = send(i,result,10,0);
				if(send_ret == 0) { //connection closed
					FD_CLR(i, &master);
					//users_deleteFd(i); //TODO if deleted fd then problem while comparing the last answer
					continue;
				}				
			}
		}
	}
	//returning fd
	return ;
}

void users_deleteFd(int fd) {
	int i;
	for (i = 0; i < MAX_USERS; ++i)
	{
		if(users[i][1] == fd) {
			users[i][1] =0;
			return;
		}
	}
}

int rtt_check(int new_fd)
{
	ssize_t send_ret, recv_ret;
	char rtt_check[1];
	time_t rtt1, rtt2;

	rtt1 = time(NULL);
	send_ret = send(new_fd, "r", 1, 0);
	if(send_ret == 0)
	{
		return -2;
	}
	wrongRecv(send_ret, 1);
	//printf("%s\n","Between two phase of rttCheck" );
	recv_ret = recv(new_fd, rtt_check, 1,0);
	rtt2 = time(NULL);
	if(recv_ret == 0)
	{
		return -2;
	}
	wrongRecv(recv_ret,1);
	//printf("diff(%d)\n",(int) difftime(rtt2,rtt1));

	return  (int) difftime(rtt2,rtt1);
}

int login(char user[], char pass[])
{
	//for user
	static int Id = 0; //when have function getUserID, make it not static and also remove Id++;
	if(!strcmp(user,"abhishek") && !strcmp(pass,"abhishek")) {
		//Id = getUserID(user);
		return ++Id;
	}else if(!strcmp(user,"abhishek")){
		return 0; //wrong password
	}
	return -1; //wrong username
}

int totalQues;

int login_setup(int new_fd)
{
	//login inititalizations
	char login_det[16];
	char username[9],password[9], login_statMsg[7], totalQuesMsg[5] = TOTAL_QUES;
	totalQues = atoi(totalQuesMsg);
	//for user
	int userId;

	//for wrongRecv
	ssize_t send_ret,recv_ret;

	//getting username and password
	recv_ret = recv(new_fd,login_det,16,0);
	if(recv_ret == 0)
	{
		return -2;
	}
	wrongRecv(recv_ret,16);

	//extracting username nad password
	strncpy(username,login_det,8);  
	strncpy(password,login_det+8,8);
	username[8]='\0'; password[8]='\0';
	//printf("username(%s) and password(%s)\n",username,password);

	if( (userId = login(username,password)) > 0) {
		//printf("%d\n",userId);

		//sending status
		strncpy(login_statMsg, LOGIN_OK, 2);
		strncpy(login_statMsg + 2, totalQuesMsg , 5);
		send_ret = send(new_fd, login_statMsg,7,0);
		if(send_ret == 0)
		{
			return -2;
		}
		wrongRecv(send_ret,7);

		//TODO error checking then handling if error

		//users[userId][0] = 0; //score
		users[userId][1] = new_fd; //file descriptor associated with this user
		//users[userId][2] = 0; //answer time
		return 1;
	}
	else if(userId == -1) { //wrong username
		strncpy(login_statMsg, LOGIN_WrongUsername, 2);
		strncpy(login_statMsg + 2, totalQuesMsg , 5);
		send_ret = send(new_fd, login_statMsg,7,0);
		if(send_ret == 0)
		{
			return -2;
		}
		wrongRecv(send_ret,7);
		return 0;
	}
	else{
		strncpy(login_statMsg, LOGIN_WrongPassword, 2);
		strncpy(login_statMsg + 2, totalQuesMsg , 5);
		send_ret = send(new_fd, login_statMsg,7,0);
		if(send_ret == 0)
		{
			return -2;
		}
		wrongRecv(send_ret,7);		
		return 0;
	}
	//TODO erorr handling of above two case
	//TODO make login a loop
}


void *get_in_addr(struct sockaddr *sa)
{
	if (sa->sa_family == AF_INET) {
		return &(((struct sockaddr_in*)sa)->sin_addr);
	}

	return &(((struct sockaddr_in6*)sa)->sin6_addr);
}


int main(void)
{
	int listen_fd, new_fd; // listen on sock_fd, new connection on new_fd
	struct addrinfo hints, *servinfo, *p;
	struct sockaddr_storage their_addr;//connection's address info
	socklen_t sin_size;
	int yes=1;
	char s[INET6_ADDRSTRLEN];
	int rv;

	memset(&hints, 0, sizeof hints);
	hints.ai_family = AF_UNSPEC;//IPv4 or IPv6
	hints.ai_socktype = SOCK_STREAM;
	hints.ai_flags = AI_PASSIVE; // use my IP

	if((rv = getaddrinfo(NULL,PORT, &hints, &servinfo)) != 0){ //getting which IPv server supports
		fprintf(stderr, "getaddrinfo: %s\n",gai_strerror(rv));
		return 1;
	}

	//loop through all the result and bind to the first we can
	for(p = servinfo; p != NULL; p  = p->ai_next){
		if((listen_fd = socket(p->ai_family, p->ai_socktype, p->ai_protocol)) == -1){
			perror("server : socket");
			continue;
		}
		
		if(setsockopt(listen_fd, SOL_SOCKET, SO_REUSEADDR, &yes, sizeof(int)) == -1){
			perror("set sockopt");
			exit(1);
		}

		if(bind(listen_fd, p->ai_addr, p->ai_addrlen) == -1){
			close(listen_fd);
			perror("server: bind");
			continue;
		}

		break;
	}
	
	if(p == NULL) {
		fprintf(stderr, "server:failed to bind\n");
		return 2;
	}

	freeaddrinfo(servinfo);//all done with this structure

	if(listen(listen_fd, BACKLOG) == -1){
		perror("listen");
		exit(1);
	}
	//printf("listen_fd(%d)\n",listen_fd );

//	sa.sa_handler = sigchld_handler; // reap all dead processes
//	sigemptyset(&sa.sa_mask);
//	sa.sa_flags = SA_RESTART;
//	if(sigaction(SIGCHLD, &sa, NULL) == -1){
//		perror("sigaction");
//		exit(1);
//	}

	printf("server waiting for connections.....\n");

	fd_set master; //master file descriptor list
	fd_set read_fds; //temp file descriptor list for select()
	int fdmax;
	FD_ZERO(&master); //clear the master and temp sets
	FD_ZERO(&read_fds);

	FD_SET(listen_fd, &master);

	//keep track of the bigge file descriptor
	fdmax = listen_fd; // so far it is this one

	ssize_t recv_ret, send_ret;
	

	//for login
	int loginStatus;
	struct sigaction sa;
	sa.sa_handler = alarm_handler;
	sigemptyset(&sa.sa_mask);
	//sa.sa_flags = SA_RESTART;
	if(sigaction(SIGALRM, &sa, NULL) == -1){
		perror("sigaction");
		exit(1);
	}


	//login while
	alarm(LOGIN_WAIT);//accepting login only for 10 seconds
	timer = 1;
	printf("\n-----------------------------Waiting for users to login for %d seconds.-----------------------------\n",LOGIN_WAIT);
	while(timer) {
		sin_size = sizeof their_addr;
		new_fd = accept(listen_fd, (struct sockaddr *)&their_addr, &sin_size);
		if(new_fd == -1){
			//perror("accept");
			break;// this break is very important , as we are using alarm(Signals) and accept is a blocking function
					//If accept is in blocked sate and our signal comes then accept will exit returning error. So
					//if error then we have to break else next satements will run on falsy values.
					//In reality we dont need this as I alredy set the SA_RESTART flag in sigaction which means
					//after returning from the signal handler restart the activity on which you are previously
					//instead of starting execution from next line.
		}else {
			
			inet_ntop(their_addr.ss_family, get_in_addr((struct sockaddr *)&their_addr), s, sizeof s);
			printf("server : got connection from %s\n", s);

			//LOGIN     //need to call login function via thread because this 
							//may stop the function if user doesnot respond
			loginStatus = login_setup(new_fd);

			//adding to select checkup
			if(loginStatus) {
				printf("User Loginned Succesfully\n");
			}
		}
	}
	printf("-----------------------------Login Closed. Now starting the QUIZ.-----------------------------\n");

	//for randome seek
	srand(time(NULL));
	
	//for main loop counter
	int i, win_fd;

	//for questions
	int QID = 0;
	int maxQues_Len = 40, maxOpt_len = 10, maxQuesId_len = 5, maxScore_len = 5;//including '\0' this time
	char quesMsg[maxQues_Len + 4 * maxOpt_len + maxQuesId_len + maxScore_len], answer[6];//score doesnot include \0
	//char ques[40], optA[10], optB[10], optC[10], optD[10];

	//for time calculation of each answer
	ssize_t time_ques, time_ans;

	//getting all avialable participants
	fdmax = 0;
	FD_ZERO(&master);
	for(i = 0; i < MAX_USERS; i++) {
		if( (new_fd = users[i][1]) != 0){
			FD_SET(new_fd, &master);
			if(new_fd > fdmax)
				fdmax = new_fd;
			//printf("%d\n",new_fd);
		}
	}

	int current_rtt;
	//while for main quiz
	while(totalQues--) {
		
		//checking who are ready for witing
		if(select(fdmax+1, NULL, &master, NULL, NULL) == -1){//here select will return withh all the descriptors which are 
																//ready to write , all others have to miss this question
			perror("select");
			exit(1);
		}
		
		//setting which question to send
		QID++;

		//for sending questions to all
		for(i = 0; i <= fdmax; i++) {
			if(FD_ISSET(i, &master)) {
				//rtt check
				current_rtt = rtt_check(i);
				if(current_rtt == -2) {//connection closed
					FD_CLR(i, &master);
					users_deleteFd(i);
					continue;
				}
				//setting question
				//nextQues(quesMsg, ques, optA, optB, optC, optD);
				nextQues(quesMsg, QID, i);
				printf("Sending Question QID(%s) fd(%d)\n",quesMsg,i);
				//send a question
				time_ques = time(NULL);
				send_ret = send(i, quesMsg, maxQues_Len + 4 * maxOpt_len + maxQuesId_len + maxScore_len, 0);
				if(send_ret == 0) {//connection closed
					FD_CLR(i, &master);
					users_deleteFd(i);
					continue;
				}
				wrongRecv(send_ret, maxQues_Len + 4 * maxOpt_len + maxQuesId_len + maxScore_len);	
			}
		}

		//ASSUMING Question is send ot all the users at same time		
		//receiving and waiting for answers
		alarm(MAX_ANSWER_TIME);
		timer = 1;
		FD_ZERO(&read_fds);
		read_fds = master;
		// unsigned int qq = read_fds.fd_count;
		// for (int ii = 0; ii < qq; ++ii)
		// {
		// 	printf("%d\n",read_fds.fd_array[i] );
		// }
		while(timer) {
			//printf("HURRAY\n");
			read_fds = master;
			if(select(fdmax+1, &read_fds, NULL, NULL, NULL) <=0){
				perror("select");
				//exit(4);
				break;//break is important. Explained above
			}

			for(i = 0; i <= fdmax; i++) {
				//printf("Recving answer I(%d)\n",i);
				if(FD_ISSET(i, &read_fds)) {
					//receiving answer
					//TODO if we get answer to wrong ques
					//printf("Recving answer I(%d) fdmax (%d)\n",i,fdmax);
					recv_ret = recv(i,answer,6,0);
					time_ans = time(NULL);
					//printf("%s\n",answer );
					if(recv_ret == 0)//connection closed
					{
						FD_CLR(i, &read_fds);
						FD_CLR(i, &master);
						//users_deleteFd(i); //TODO if deleted fd then problem while comparing the last answer
						continue;
					}else if(recv_ret > 0){
						if(QID == atoi(answer)) { //we have received the answer to this question so remove the user from wait answer loop
							wrongRecv(recv_ret,6);
							FD_CLR(i, &read_fds);
							//printf("%s i(%d)\n","#######",i );
							answerCheck(i ,answer, current_rtt, (int) difftime(time_ans,time_ques));
							//printf("Answer(%c)\n",answer[0]);
						}
						else{//we have recvd something unexpectable so ignore for NOW

						}
					}
				}
			}
		}
		//comparing answers
		win_fd = compareAnswer();
		printf("win_fd(%d)\n",win_fd );
		//sending score
		//score is send with next question
	}

	//sending Final score and declaring the winner
	declareWinner(master, fdmax);

	return 0;
}



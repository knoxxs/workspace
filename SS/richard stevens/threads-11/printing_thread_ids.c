#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <error.h>
#include <unistd.h>
#include <sys/types.h>

pthread_t ntid;

void printids(const char* s)
{

	pid_t pid;
	pthread_t tid;

	pid = getpid();
	tid = pthread_self();
	printf("%s pid %u tid %u (0x%x)\n",s , (unsigned int) pid, (unsigned int) tid, (unsigned int) tid);

}

void* thread_func(void* arg)
{
printids(" new thread : ");
return ((void*)0);
}

int main(void)
{

int err;

err = pthread_create(&ntid, NULL, thread_func, NULL);
	if(err != 0)
	{
		printf("can't create thread: %d\n", strerror(err));
	}
	
	printids("main thread: ");
	sleep(1);
	exit(0);

}

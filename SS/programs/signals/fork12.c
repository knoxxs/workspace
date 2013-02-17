#include <stdio.h>
#include <signal.h>
#include <wait.h>
#include <sys/types.h>
#define N 5

void main()
{
	pid_t pid[N];
	int i, child_status;
	for (i = 0; i < N; i++)
	{
		if((pid[i] = fork()) == 0)
			while(1); //child infinite loop
	}
	
	//parent terminate the child process
	
	for(i = 0; i <N; i++)
	{
		printf("Killing process %d\n", pid[i]);
		kill(pid[i],SIGINT);
	}
	
	//parent reap the terminated child
	for(i=0; i< N; i++)
	{
		pid_t wpid = wait(&child_status);
		if (WIFEXITED(child_status))
			printf("Child %d terminated with exit status %d and the terminated signal is%d\n", wpid, WEXITSTATUS(child_status),WTERMSIG(child_status));
		else
			printf("Child %d terminated abnormally and with exit status %d and the terminated signal is %d\n", wpid,WEXITSTATUS(child_status),WTERMSIG(child_status));
	}
}

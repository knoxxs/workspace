#include <stdio.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
#include <stdlib.h>
#include <errno.h>

#define N 5

int main(void)
{
int fatal(char *);
int status, i, exit_status, sig_no;
pid_t pid;

if ((pid = fork()) < 0)
        fatal("fork failed");

if (pid==0)
{
        /* child process call the library routine sleep to suspend execution for few seconds*/
        printf("\nChild: Child Process ID %d is sleeping...\n", getpid());
        abort();
//        sleep(5);
//        exit(5);        /* exit with non-zero value */
}

/* Parent waits for all of its children to terminate */
while (waitpid(pid, &status, WNOHANG) == 0)
{
        printf("Parent: Still waiting...\n");
        sleep(1);
}

	/* To test if the child exited normally */
	if (WIFEXITED(status))
	{
		exit_status = WEXITSTATUS(status);
		printf("Parent: child %d terminated normally with exit status =%d\n", pid, exit_status);
	}
	/* to test if the child received a signal */
	if(WIFSIGNALED(status))
	{
	sig_no=WTERMSIG(status);
	printf("Parent: Signal number %d terminated child %d\n", sig_no, pid);
	if (WCOREDUMP(status))
		printf("Parent: ... core dump created\n");

	}
	/* to test if the child has been stopped */
	if(WIFSTOPPED(status))
	{
		sig_no = WSTOPSIG(status);
		printf("Signal number %d stopped child %d\n", sig_no, pid);
	}
//if (errno != ECHILD)
//        printf("waitpid error");

exit(0);
}
int fatal(char *s)
{
        perror(s);
        exit(1);
}

/* To catch SIGINT 
sigaction is defined in <signal.h> as a structure
*/
#include <stdlib.h>
#include <errno.h>
#include <signal.h>
#include <stdio.h>

int main(void)
{
	int signo;
	static struct sigaction act;

	/* declare catchint, later to be used as the handler */
	void catchint(int);

	/* set up the action to be taken on receipt of SIGNINT */
	act.sa_handler = catchint;

	/*create a full mask */
		sigfillset(&(act.sa_mask));

	/*before sigaction call, SIGINT will terminate process (defualt action) */

	sigaction(SIGINT, &act, NULL);

	/* on receipt of SIGINT control will be passed to catchint */

	printf("Sleep Call #1\n");
	sleep(1);

	printf("Sleep Call #2\n");
	sleep(1);
///////////////////////////////////////////

	kill(getpid(),SIGPIPE);

///////////////////////////////////////////	
	printf("Sleep Call #3\n");
	sleep(1);
	
	printf("Sleep Call #4\n");
	sleep(1);

	printf("Exiting \n");
	exit(0);

	/* trivial function to handle SIGINT */
}
void catchint(int signo)
{
	printf("\nCATCHINT: signo=%d\n", signo);
	printf("CATCHINT: returning\n\n");
}


/* To block signals 

*/
#include <stdlib.h>
#include <errno.h>
#include <signal.h>
#include <stdio.h>

int main(void)
{
int signo, i;
sigset_t set1, set2;

/* completely fill the signal set */
sigfillset(&set1);

/* create a signal set which does not include SIGINT and SIGQUIT */
sigfillset(&set2);
sigdelset(&set2, SIGINT);
sigdelset(&set2, SIGQUIT);

/* perform the non important or critical task(s) */
for (i = 0; i < 5; i++)
        { 
	printf("The NON important task(s)\n");
	sleep(1);
	}

/* set the block */
sigprocmask(SIG_SETMASK, &set1, NULL);

/* perform the important or critical task(s) */

for (i = 0; i < 10; i++)
        { 
	printf("The MOST important task(s)\n");
	sleep(1);
	}

sigprocmask(SIG_UNBLOCK, &set2, NULL);

/* perform the least important task(s) */

for (i = 0; i < 6; i++)
        { 
	printf("The LEAST important task(s)\n");
	sleep(1);
	}
/* remove all signal blocks */

sigprocmask(SIG_UNBLOCK, &set1, NULL);
exit(0);
}

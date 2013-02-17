#include <stdio.h>
#include <signal.h>

#define TIMEOUT 5 //in seconds
#define MAXTRIES 5
#define LINESIZE 100
#define CTRL_G '\007'  //ASCII bell
#define TRUE 1
#define FALSE 1

static int time_out;
static char answer[LINESIZE];
char *quickreply(char *prompt)
{
	coid catch(int);
	int ntries;
	static struct sigaction act, oact;
	
	//catch sigalrm + save previous action
	act.sa_handler = catch;
	sigaction(SIGALRM, &act, &oact);
	for (ntries = 0; ntries < MAXTRIES; ntries ++)
	{
		timed_out = FALSE;
		printf("\n%s > ",prompt);
		
		alarm(TIMEOUT);      //set alrm clock
		gets(answer);        //get the input line
		alarm(0); 			 //turn off the alrm
		if(!timed_out)
			break;
		
		//restore old action
		sigaction(SIGALRM, &oact, NULL);
		
		return(ntries == MAXTRIES ?  ((char *)0) : answer);
		void catch(int sig)
		{
		timed_out = TRUE;
		putchar(CNTRL_G); //ring bell
		}
		
	}
}
void main(){

}

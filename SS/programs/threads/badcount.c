#include <stdio.h>
#include <sys/types.h>
#include <pthread.h>
#include <time.h>
#include <stdlib.h>
#include <semaphore.h>
#include <errno.h>

/////////////////////////////////////////////////////////////////

/* Initialize semaphore sem to value */
/* pshared=0 if thread, pshared=1 if process */

void unix_error(char *msg) /* unix-style error */
{
    fprintf(stderr, "%s: %s\n", msg, strerror(errno));
    exit(0);
}

void Sem_init(sem_t *sem, int pshared, unsigned int value) {
	if (sem_init(sem, pshared, value) < 0)
	unix_error("Sem_init");
}

/* P operation on semaphore sem */
void P(sem_t *sem) {
	if (sem_wait(sem))
	unix_error("P");
}

/* V operation on semaphore sem */
void V(sem_t *sem) {
	if (sem_post(sem))
	unix_error("V");
}

///////////////////////////////////////////
#define NITERS 20000000
void *count(void *arg);
/* shared counter variable */
unsigned int cnt = 0;
sem_t sem;

int main() 
{   pthread_t tid1, tid2;
	
	Sem_init(&sem, 0, 1);

    pthread_create(&tid1, NULL, count, NULL);
    pthread_create(&tid2, NULL, count, NULL);
    pthread_join(tid1, NULL);
    pthread_join(tid2, NULL);
    if (cnt != (unsigned)NITERS*2)
        printf("Value of cnt variable not proper! cnt=%d\n", cnt);
    else
        printf("OK cnt=%d\n", cnt);
    exit(0);	}
/* thread routine */
void *count(void *arg) 
{   int i;
    for (i = 0; i < NITERS; i++){
    	
    	P(&sem);
        cnt++;
    	V(&sem);
    	
    }
    return NULL;	}

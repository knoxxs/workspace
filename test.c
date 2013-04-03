#include <stdio.h>
#include <stdlib.h>
#include<pthread.h>

int R1=3, R2=3, C1=3, C2=3;
int mat1[3][3];
int mat2[3][3];
int r, c,cnt, result[3][3];

void *multiply(void *p);
int main()
{
	pthread_t thread[9];
	int i = 0, j =0;
	printf("Enter the values of matrix 1: \n");
	for(i=0;i<3;i++)
	{
		for(j=0;j<3;j++)
		{
			scanf("%d", &mat1[i][j]);	// taking input matrix1
		}
	}

	

	printf("Enter the values of matrix 2: \n");

	for(i=0;i<3;i++)
	{
		for(j=0;j<3;j++)
		{
			scanf("%d",&mat2[i][j]);	// taking input matrix2
		}
	}

	int tid[9];	

	for(i=0;i<9;i++)
	{
		tid[i]= i;
		pthread_create(&thread[i], NULL, multiply, (void *) &tid[i]);
	}



	for(i=0;i<9;i++)
	{
	pthread_join( thread[i], NULL);
	printf("Thread %d returns. \n",i);
	}

    exit(0);
}

void *multiply(void *p)	
{
	int *tmp = (int *)p;
	r= *tmp/3;
	c= *tmp%3;

	for(cnt=0;cnt<3;cnt++)
	{
		result[r][c] += mat1[r][cnt]*mat2[0][cnt];
	}

	printf("result[%d][%d] = %d \n",r,c,result[r][c]);
}

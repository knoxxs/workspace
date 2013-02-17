#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
 

int *matrixA, *matrixB, *matrixC, K_Size, N_Size;
 
void *calc_Cell(void * num1); //calculates each cell of matrix
 
int main(int argc, char *argv[]) //
{
    int M, K, N;
    printf("Enter the dimensions(starting from 0)\nRows of Ist matrix:\n");
    scanf("%d",&M);
    printf("\nColumns of Ist matrix:\n");
    scanf("%d", &K);
    printf("\nColumns of IInd matrix:\n");
    scanf("%d", &N);

    int i,j; //placeholders for double-loop to traverse matrix

    int A[M][K], B[K][N], C[M][N];
    matrixA = A;
    matrixB = B;
    matrixC = C;

    K_Size = K;
    N_Size = N;

    for(i = 0; i < M; i++){
        for(j = 0; j < K; j++){
            printf("Enter A[%d][%d]\n", i, j);
            scanf("%d",&A[i][j]);
        }
    }

    for(i = 0; i < K; i++){
        for(j = 0; j < N; j++){
            printf("Enter B[%d][%d]\n", i, j);
            scanf("%d",&B[i][j]);
        }
    }

    pthread_t tid[M][N];//declare pthread id matrix
    //pthread_attr_t attr;
    int cellPosition[2];//declare position array to pass to threads

    //pthread_attr_init(&attr);


    for(i = 0; i < M; i++)
        for(j = 0; j < N; j++){
            cellPosition[0] = i;//assign i and j locations to array to pass to thread
            cellPosition[1] = j;
            //printf("Inside first loop:\n");
            pthread_create(&tid[i][j], NULL, *calc_Cell, (void *) cellPosition);//create a new thread to calculate sum of cell [i][j]
        }

    for(i = 0; i < M; i++)
        for(j = 0; j < N; j++)
            pthread_join(tid[i][j], NULL);//wait until each cell is finished calculating

    for(i = 0; i < M; i++){ 
        printf("\n");
        for(j = 0; j < N; j++){ 
            printf("%d\t", C[i][j]);//print resultant matrix
        }
    }

    return 0;
}

void *calc_Cell(void * num1){
    //int cell = 0;
    //printf("%d", atoi(num1), "\n");
    int *line; //int pointer to receive void pass
    line = (int *) num1; //assign void array to int array

    printf("akdhjskd\n");


    int z;
    for(z = 0; z < K_Size; z++){
        *(matrixC + (line[0] * N_Size) + line[1]) += (matrixA[line[0]][z] * matrixB[z][line[1]]);//calculate cell line[0]line[1] of matrix C
        printf("%d\t", matrixC[line[0]][line[1]]);
    }
    pthread_exit(0);

    //C[line[0]][line[1]] = cell;
}
#include <stdio.h>


int procurando(int *array, int pos, int length,int x){
    if(pos == length-1){
        return array[pos];
    }
    else{
        if(array[pos] == x){
            return pos +1;
        }
        else{
            procurando(array,pos+1,length,x);
        }
    }
    
} 

int main() {
    
    int numeros[11] = {0,1,2,3,4,5,6,7,8,9,10};
    int x;
	printf("Dado um valor X incluindo 0 e 10, escreva para saber sua posição: ");
	scanf("%d",&x);
	while(x < 0 || x > 10){
	    printf("Escreva um valor válido: ");
	    scanf("%d",&x);
	}
	printf("Ele está na posição: %d",procurando(numeros,0,11,x));
	return 0;
}

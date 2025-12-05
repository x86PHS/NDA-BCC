#include <stdio.h>

int somaR(int *arrays,int pos, int length){
    int somando = 0;
    if(pos==0){
        return arrays[pos];
    }
    somando += arrays[pos] + somaR(arrays,pos-1,length);
    return somando;
}

int main() {
    
    int numeros[10] = {1,2,3,4,5,6,7,8,9,10};
	printf("%d",somaR(numeros,10,10));
	return 0;
}

/*
Realizando a soma de trás para frente
*/

#include <stdio.h>


int fibonnaci(int n){
    int somaF = 0;
    if(n == 0){
        return 0;
    }
    if(n == 1){
        return 1;}
    somaF = fibonnaci(n-1) + fibonnaci(n-2);
    return somaF;}
    
/*
Como está funcionando: somaF = fibonnaci(n-1) + fibonnaci(n-2);
Argumento 6:
somaF = fibonnaci(6-1) + fibonnaci(6-2);
Chamou: fibonnaci(5) e fibonnaci(4)
somaF = fibonnaci(5-1) + fibonnaci(4-2); 8
Chamou: fibonnaci(4) + fibonnaci(2);
somaF = fibonnaci(4-1) + fibonnaci(2-2); 5
Chamou: fibonnaci(3) + fibonnaci(0);
somaF = fibonnaci(3-1) + fibonnaci(0) -> 0; 3
Chamou: fibonnaci(2) + 0;
somaF = fibonnaci(2-1) + fibonnaci(0) -> 0; 2
Chamou: fibonnaci(1) + 0;
somaF = fibonnaci(1) -> 1 + fibonnaci(0) -> 0; 1
*/
    
int main() {
    
    int n;
    printf("Escreva um N termo:");
    scanf("%d",&n);
    printf("Fibonnaci:%d",fibonnaci(n));
	return 0;
}

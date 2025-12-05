#include <stdio.h>

int fat(int x){
    
    if(x == 0 || x == 1){
        return 1;
    }
    return x * fat(x-1);
}

/*
Desabstraindo
- Basicamente, fazemos com que chamamos a função na função
main principal do código, ao chamar, ele entra no bloco de código
da função fat() e assim, fazemos primeiro uma verificação
se a função receber o valor 1 ou 0 ira retornar valor 1 para
ela mesma, isso quer dizer, que ao realizarmos um
x * fat(x-1) - Ele vai empilhar
fat(5)
fat(4) ...
Sucessivamente de modo que ao chegar a 1 ou 0 ira retornar
o valor 1 para a multiplicação
*/

int main() {
    
    int x;
    printf("Fatorial: ");
    scanf("%d",&x);
	printf("%d",fat(x));
	return 0;
}

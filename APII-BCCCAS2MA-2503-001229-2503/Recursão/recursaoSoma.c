#include <stdio.h>

int somaR(int *arrays,int pos, int length){
    int somando = 0;
    if(pos==length-1){
        return arrays[pos];
    }
    somando += arrays[pos] + somaR(arrays,pos+1,length);
    return somando;
}

/*
Em 'int *arrays' é passado os vetores dos numeros contidos na
main e passando para o ponteiro de arrays, basicamente ele 
percorre de modo que a gente não faça um modo interativo para
percorrelo.
Ao passar, precisamos definir um padrão para essa recursividade
ou seja, ao percorrermos do array, ele vai chegar ao -1 (Limitado)
por nós. Sendo assim, ele passara como argumento a posição atual
quando tentar chamar um tamanho a menos
no somando, vamos realizar uma soma junto de igualdade
com o arrays contendo a posição atual contida no recursão
e somar com um a mais. Isso devido a gente ter passado inicialemnte a posição 0 
ele vai percorrer do 0,1,2,3,4,5,6,7,8 e até ao 9. Passamos um
length para ele de 10. Porém, entretanto, sabemos que ele vai
percorrer até 11 valores (que não existem)
*/

int main() {
    
    int numeros[10] = {1,2,3,4,5,6,7,8,9,10};
	printf("%d",somaR(numeros,0,10));
	return 0;
}

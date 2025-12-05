## Recursão

2025-11-07 18:06
Status: #developing 
Tags: [[algoritmos]] [[recursao]]

---

# Conceitos Gerais

Recursão é uma ferramenta na programação na qual faz com que a gente reutilize funções. Basicamente, a recursão ela se baseia em um caso base e assim realizamos chamadas recursivas de modo a resolver um problema.

A recursão faz com que a gente dentro dela mesma chame a função tantas vezes forem necessárias, pensando nisso, a gente precisa estruturar um caso base na recurso para que a gente possa retornar os valores precisos para chegar no que queremos. Exemplo:

```c
#include <stdio.h>

int fatorial(int n){
    if(n == 0){
        return 1;}
    return n * fatorial(n-1);
}

int main() 
{
    int fat;
    printf("Fatorial:");
    scanf("%d",&fat);
    printf("%d",fatorial(fat));
    return 0;
}
```

Basicamente, instauramos um caso base que seria o valor N ser igual a 0. Ao chegar em 0, ele vai retornar o valor 1 e assim vai retornar o valor para as funções anteriores. Pense que a recursão é igual uma pilha, a pilha ela faz por ordem de chamada de maneira semelhante ao formato "LiFo" fazendo que seja chamadas sucessivamente as funções até o caso base. Debug:

```text
fatorial(5)

(N == 0) = FALSE
5 * fatorial(5-1)
(N == 0) = FALSE
4 * fatorial(4-1)
(N == 0) = FALSE
3 * fatorial(3-1)
(N == 0) = FALSE
2 * fatorial(2-1)
(N == 0) = FALSE
1 * fatorial(1-1)
(N == 0) = TRUE
RETURN 1

> Assim ele vai resolver da última chamada para a primeira que foi feita

1 * 1 = 1
2 * 1 = 2
3 * 2 = 6
4 * 6 = 24
5 * 24 = 120
```

Funcionando assim dependendo do caso base do programa. Isso serve para N quaisquer números que forem colocados. 

Recapitulando,  a recursão ela funciona no formato LiFo, resolvendo do primeiro ao caso base.

---

# Referências
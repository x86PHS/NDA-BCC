- Na computação, os computadores não geram números aleatórios. Porém, eles podem gerar números pseudo-aleatórios que supostamente são "aleatórios". Eles podem gerar aletoriamente conforme um cálculo feito por resto de uma divisão contendo a quantidade de elementos e início da contagem.

```C
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main(){

	srand(time(NULL));
	int x rand() % 6 + 1;
}
```

- $srand(SEED)$ - O "seed" vai ser útil para nós justamente para pegarmos uma referência para a criação de números. Nesse caso, vamos utilizar a biblioteca time utilizando do tempo para gerar números aleatórios.
- O primeiro número da divisão vai se tratar a quantidade de números que queremos trabalhar e o outro de soma estamos dizendo para que ele inclua o primeiro valor como 1. Tecnicamente, o +1 está fazendo com que o intervalo de 1 a 6 inclua 6, já que na computação é tudo sempre -1.

- Exemplo de problema que queremos que gere um número entre X e Y.

```C
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main(){
	srand(time(NULL));
	// Numero entre 
	// 125 e 871
	int x rand() % (871 - 125) + 125;
	# Estamos falando para que ele gere um número entre 871 e 125, começando do 126.
}
```

- Aqui estamos definindo necessariamente que queremos que os números entre o intervalo entre $871$ e $125$ (746 Elementos) e inicializando a contagem a partir do 125.
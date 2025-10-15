- Funções são pedaços de códigos que necessariamente vão ser repetidos uma série de vezes caso ocorra alguma ação variadas vezes. Por exemplo, podemos fazer funções que servem para realizar cálculos ou até mesmo exibições de alguns resultados etc. Isso vai depender do que queremos !

## Como é feita

- Uma função é feita a base de uma sequência de instruções que chamamos quando precisamos do código.  As funções precisam necessariamente serem de um tipo específico de dado, seja ela do tipo: `INT`, `FLOAT`, `CHAR`, `VOID` e `BOOL`.
- O tipo da função é crucial, já que ela necessariamente precisa nos retorna um dado específico dela para que foi executada pela funcionalidade. E dessa forma, para que a gente possa trabalhar com argumentos nas funções, precisamos especificar necessariamente suas posições na declaração da função.

```c
int media(int a,int b){
	int media = 0;
	media = (a + b) / 2;
	return media;	
}
```

- Neste exemplo, ele recebe o argumento $A$ e $B$ na função, esses argumentos elementares a gente vai utiliza-los como se estivéssemos declarado agora e podemos manipular os dados dentro da função com elas e retornar um valor. A gente está retornando dados do tipo de inteiro para a função e assim na função $main$ retornando o valor principal da média.

```c
int media(int a,int b){
	int media = 0;
	media = (a + b) / 2;
	return media;
	
}

int main(void){
	int a, b;
	printf("Digite dois números para cálcular sua média !\n");
	printf("Numero 1");
	scanf("%d",&a);
	printf("\n Numero 2");
	scanf("%d",&b);
	printf("%d",media(a,b));
	
	return 0;
}
```

- Como é possível observar no código principal, no último $printf$ necessariamente estamos passando diretamente os parâmetros A e B que declaramos para na $main$ e jogando para a nossa função de cálculo de média, sendo nessa formatação, ele nos retorna o valor inteiro do valor da média aritmética.
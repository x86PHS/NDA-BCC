## Generic Note

2025-11-07 19:12
Status: #developing 
Tags: [[algoritmos]] [[complexidade]]

---

# Aplicação do Big-O

```c
int first(const int a[], int n){
	return a[0];
}
```

Como essa operação é independente do tamanho do array, logo a operação em si é uma constante sendo `T(n) = C = O(1)`. Esse casos sempre são ignorados porque são constantes.

```c
int soma_min_max(int a[], int n){
	int soma = 0;
	int min = a[0];
	int max = a[0];
	for(int i = 0; i < n; i++){
		soma += a[i];
		if(a[i] < min){
			min = a[i];
		}
		if(a[i] > max){
			max = a[i];
		}
	}
	return soma + min + max;
}
```

No inicio do código temos 3 constantes, contribuindo com o custo fixo constante.

No laço de repetição, temos uma soma, 2 comparações e 2 possíveis atribuições. Ou seja, um número constante de iterações. Dessa forma, em `n` iterações, o custo do laço é `c * n`

O retorno também dentro da primeira constante já que não estão aninhados. Logo o custo fixo é de `T(n) = c0 + c1*n`. Em termos de ignorar constantes na notação Big-O, temos um algoritmo `O(n)`.

```c
void imprime_pares(int n){
	for(int i = 0; i < n; i++){
		for(int j = 0; j < n; j++){
			printf("(%d,%d)",i,j);
		}
	}
}
```

A linha 2 em si executa em função de `N` vezes. A linha 3 executa em função de `N` vezes, sendo assim, a linha 4 é executada em função de $n^2$. Tendo ao todo uma função $O(n^2)$  sendo o mais indesejável em um algoritmo.

---

# Referências
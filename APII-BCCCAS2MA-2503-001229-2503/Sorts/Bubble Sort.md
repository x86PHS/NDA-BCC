## Bubble Sort

2025-11-09 12:14
Status: #developing 
Tags: [[algoritmos]] [[sort]]

---

# Conceitos Gerais

O Bubble sort é um tipo de algoritmo de ordenação na qual ele ordenada os dados seja de um array, estrutura de dados etc. Basicamente ele borbulha o número não ordenado até a última posição do vetor, isso quer dizer, enquanto o número não estiver no seu respectivo lugar, ele vai colocar ele em uma posição que seja $[x-1]\leq[x]\leq[x+1]$ e assim colocando seus respectivos lugares. Exemplo de algoritmo:

```c
void bubblesort(int v[],int n){
	for(int i = 0; i < n-1; i++){
		for(int j = 0; j < n-i-q; j++){
			if(vetor[j] > vetor[j+1]){
				change(v,vetor[j],vetor[j+1]);
			}
		}
	}
}
```

O problema do algoritmo de bubble sort é que ele é do tipo $O(n^2)$, sendo assim, tem um péssimo empenho na máquina. Exemplo de execução:

`8 7 6 4 12 2 10`

`7 6 4 8 2 10 12`

`6 4 7 2 8 10 12`

`4 6 2 7 8 10 12`

`4 2 6 7 8 10 12`

`2 4 6 7 8 10 12`

`2 4 6 7 8 10 12`

---

# Referências
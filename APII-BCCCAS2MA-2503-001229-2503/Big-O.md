## Notação Big-O e Análise de Algoritmos

2025-11-07 18:23
Status: #developing 
Tags: [[algoritmos]] [[complexidade]]

---

# Conceitos Gerais

A notação Big-O diz a respeito de uma análise assintótica do algoritmo baseado na sua demanda de processamento das operações em um dado número N de dados conforme a aumentamos tendendo ao infinito. 

Dado um problema de procurar uma caneta no meio de 100 pessoas, dependendo do método que vamos utilizar para achar essa caneta, precisamos perguntar para as 100 pessoas até achar a caneta. Ou seja, o problema ele cresce linearmente `O(n)`, sendo esse o pior caso dado a um algoritmo. Entretanto, se caso acharmos o melhor caso de achar a caneta já na primeira pessoa, vamos simplesmente ter uma algoritmo em função de `O(1)` sendo constante.

Sejam `f(n)` e `g(n)` funções que associam números naturais a números reais positivos. `f(n) ∈ O(g(n))` tais que se existem constantes positivas `c > 0` e `N > 0` tais que `f(n) <= c*g(n)`, para todo `n >= N`.  Ou seja, a função `f(n)` cresce no máximo tão quanto rápido quanto a função `g(n)` ignorando constantes. 

Exemplo de algoritmo `O(n)`

```c
int search(int v[], int n, int x){
	for(int i = 0; i < n; i++){
		if(v[n] == x){
			return i;}
	}
	return -1
}
```

Esse algoritmo ele cresce em função de `N`. Ou seja, conforme N for grande, ele cresce a busca linearmente ao `N` número de dados no vetor.

---

# Referências
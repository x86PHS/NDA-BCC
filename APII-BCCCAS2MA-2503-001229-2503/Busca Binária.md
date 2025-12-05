## Busca Binária

2025-11-07 18:54
Status: #developing 
Tags: [[algoritmos]] [[complexidade]]

---

# Conceitos Gerais

Dado um array crescente e um número `X`, encontrar um índice `J` tal que `A[j-1] < x < A[j]` significa que dado um vetor ordenado, precisamos encontrar um índice `J` tal que seja maior que o número que passamos para que a gente possa encontrar o índice.

```c
# v[10] = {1,5,7,9,11,13,15,17,19,21,23}

int binarysearch(int v[], int x, int left, int right){
	while(left <= right){
		int mid = (left + right) / 2;
		if(array[mid] == x){
			return mid;}
		if(array[mid] < x){
			left = mid + 1;}
		else{
			right = mid - 1;}
		}
		return -1;
}
```

Basicamente, ele vai pegar o valor `0` da esquerda e vai somar ao `10` e realizar a media, se tornando o meio. Vamos supor que nosso número seja `15`, ele vai fazer `(10 + 0) = 10 / 2 = 5` e assim, o meio vai ser igual a `5`. Ai ele vai comparar se o meio é igual o `X` que a gente deu, caso não seja, ele vai comparar o array na posição meio se é menor que X, caso seja, ele vai realizar `1 + 5 = 6` se tornando a nova esquerda do algoritmo e caso ao contrário, vai diminuir 1 do meio e se torna a nova direita até que sobre apenas um número ou `left == right`.

No caso desse algoritmo, classificamos ele como `O(log n)` já que seu crescimento é logarítmico.


---

# Referências
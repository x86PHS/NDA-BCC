## Merge Sort

2025-11-10 19:10
Status: #developing 
Tags: [[sort]]

---

# Conceitos Gerais

O conceito de merge sort, é basicamente dividir e conquistar. Esse "paradigma" trata os dados com sub problemas de um grande problema e é dessa forma que o merge sorte trabalha.

Inicialmente no algoritmo merge, é passado: o array, o número do início (0) e o número do fim (N qualquer). Inicialmente, dividimos o vetor em sub arrays conforme a media dos dados inícios e fins.

`mid = (0 + n) / 2;` - Vamos pensar que o N seria um número como 5/6 ou semelhante, ou seja: `mid = (0 + 6) / 2 = 3` vai ser o meio do nosso vetor.

E vamos dividir esse array como se tivesse um novo início e um novo fim com base no cálculo do meio que a gente fez. Dessa forma:

> Lado esquerdo do vetor: `esq_ini = ini; esq_fim = mid;`
> Lado direito do vetor: `dir_ini = mid+1; dir_fim = fim;`

E dessa forma, vamos fazer recursividade para ir subdividindo essas partes do array que fizemos os cálculos

```c
mergeSort(arr, esq_ini, esq_fim);
mergeSort(arr, dir_ini, dir_fim);
```

Dessa forma, a recursividade vai fazer com que ele vá dividindo até o caso base do `N` ser menor ou igual a 1, assim, ele vai reconhecer que o código já chegou em seu caso base e vai ir retornar terminando a recursividade. Para podermos reorganizar o código juntando as partes, vamos utilizar a função de merge, passando como argumento: o array, o inicio da esq, o fim da esq, o inicio da dir e o fim da dir.

![[mergesort.png]]

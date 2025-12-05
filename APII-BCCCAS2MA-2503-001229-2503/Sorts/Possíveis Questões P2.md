1. Descreva, com suas palavras, como os algoritmos BubbleSort e InsertionSort
funcionam.

- O **BubbleSort** é um dos algoritmos de ordenação mais simples. Sua lógica principal é percorrer o array (lista) várias vezes, e a cada passagem, ele compara pares de elementos adjacentes (lado a lado).
- O **InsertionSort** funciona de maneira diferente. Ele divide mentalmente o array em duas partes: uma sub-lista **ordenada** à esquerda (que começa vazia) e uma sub-lista **não ordenada** à direita. Ele vai ordenar essas sub-listas em pares conforme for fazer as comparações. Com isso, ele realiza diversas comparações até que ele garanta que as sub-listas adjacentes estejam ordenadas

2. Para os arrays abaixo, desenhe o passo a passo da execução dos algoritmos
BubbleSort e InsertionSort, para deixá-los em ordem crescente.

a. `[2, 4, 6, 10, 9, 12]`

Bubble:
`[2, 4, 6, 10, 9, 12]`
`[2, 4, 6, [9, 10], 12]`
`[2, 4, 6, 9, 10, 12]`

Insertion Sort:

a. `[2, 4, 6, 10, 9, 12]`

`[2, 4, 6, 10, 9, 12]`
`[2, 4, 6, 9, 10, 12]`
`[2, 4, 6, 9, 10, 12]`

b. `[5, 7, 6, 13, 12, 11`

Insertion Sort

`[5, 7, 6, 13, 12, 11`
`[5, 6, 7, 13, 12, 11`
`[5, 6, 7, 12, 13, 11`
`[5, 6, 7, 12, 11, 13`
`[5, 6, 7, 11, 12, 13`

Bubble:

`[5, 7, 6, 13, 12, 11`
`[5, 6, 7, 13, 12, 11`
`[5, 6, 7, 12, 11, 13`
`[5, 6, 7, 11, 12, 13`
`[5, 6, 7, 11, 12, 13`

c. `[8, -8, 64, -20, 3, 1]`

Bubble sort

`[8, -8, 64, -20, 3, 1]`
`[-8, 8, 64, -20, 3, 1]`
`[-8, 8, -20, 3, 1, 64]`
`[-8, -20, 3, 1, 8, 64]`
`[-20, -8, 3, 1, 8, 64]`
`[-20, -8, 1, 3, 8, 64]`
`[-20, -8, 1, 3, 8, 64]`

Insertion Sort

`[8, -8, 64, -20, 3, 1]`
`[-8, 8, 64, -20, 3, 1]`
`[-8, 8, -20, 64, 3, 1]`
`[-8, -20, 8, 64, 3, 1]`
`[-8, -20, 8, 3, 64, 1]`
`[-8, -20, 3, 8, 64, 1]`
`[-8, -20, 3, 8, 1, 64]`
`[-8, -20, 3, 1, 8, 64]`
`[-8, -20, 1, 3, 8, 64]`

3. Quais são as complexidades de tempo do BubbleSort e do InsertionSort?
	- No melhor caso ambos são $O(n)$ e no pior e medio caso são $O(n^2)$

4. Descreva, com suas palavras, como os algoritmos Mergesort e Quicksort
funcionam.

O merge funciona o dilema dividir e conquistar, ele vai dividir os vetores de 2 em 2 até que fique apenas uma sub-lista de apenas um elemento. Com isso, vamos ir retornando no array de modo que o menor entre primeiro no array e o maior por último. Ao organizar as partes divididas, vamos realizar uma iteração que ela vai compara a primeira sub-lista com a segunda e vai comparar os valores e vai adicionando conforme qual for menor no array.

O quicksort em si é estruturado baseado em um pivô, esse pivô ele vai definir através de uma partição como vamos organizar os dados. A cada iteração, a gente vai organizar o lado esquerdo do pivô para os números que são menos que ele e os números a direita dele serem os maiores que ele. Assim, ao fim de organizar, vamos retornar o índice no qual o pivô parou e vamos utilizar duas outras funções de quick utilizando o pivô como ponto final do lado esquerdo e ponto inicial do lado direito.


5. Para os arrays abaixo, desenhe o passo a passo da execução dos algoritmos
Mergesort e Quicksort, para deixá-los em ordem crescente.

a. `[2, 4, 6, 10, 9, 12]`
b. `[5, 7, 6, 13, 12, 11`
c. `[8, -8, 64, -20, 3, 1]`



6. Quais são as complexidades de tempo dos algoritmos?

Ambos no pior caso são de $O(n^2)$ e no medio caso $O(n*\log n)$
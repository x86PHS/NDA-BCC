<center><h2>Vetores</h2></center>
- Vetores nada mais que são uma coleção de dados indexada, unidimensional, homogênea, e de tamanho fixo. Conhecida como arranjo ou array, podemos em vetores armazenar a quantidade de dados que a gente quiser e estivermos pré-dispostos. Ex:

```portugol
Var

	A: vetor [0..9] de inteiro
	B: vetor [0..4] de real
	C: vetor [0..7] de caractere

Inicio
```

- Primeiro inicializamos o vetor, com essa inicialização a gente simplesmente precisa informar os tipos de dados que vão ser armazenados de forma correspondente.
- Para rodarmos em um vetor, precisamos necessariamente fazer um "For" pelo vetor e ir armazenando os dados. Ex:

```portugol
A[3] <- 10
	para i de 0 ate 4 faca
		B[i] <- i + 10
	fimpara
C[1] <- "Maria"
```

- Estamos armazenando dados no Vetor A na posição 3. No vetor B vamos pegar o valor da variável "i" e somar 10 armazenando conforme o numero que estiver em "i" para o vetor B. Por fim, vamos armazenar na primeira segunda posição do vetor C o nome "Maria".
- Lembrando que, ao criarmos um vetor na memória, ele inicializa do 0, sendo assim, precisamos rodar um For de 0 até X que queremos. Se quisermos um vetor de 10 posições, precisamos necessariamente criar de 0 a 9.
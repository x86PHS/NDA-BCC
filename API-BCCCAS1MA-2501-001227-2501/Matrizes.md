- Matrizes nada mais são que uma coleção de dados indexados e bidimensionais que contêm tamanho fixo. Uma matriz nada mais é que um vetor com linhas e colunas. Isso significa que, um vetor  na linha $[1]$ na coluna $[2]$ vai obter determinado dado.
- **Exemplo de Matriz**
	$\begin{vmatrix} 0 & 1 & 2 \\  0 & 1 & 2 \\ 0 & 1 & 2 \\  0 & 1 & 2 \\ 0 & 1 & 2 \end{vmatrix}$ - Nesse exemplo, temos uma matriz 5x3. Ou seja, 5 linhas por 3 colunas. Nesse ordenamento de dados, vamos lidar indicando a linha e depois a coluna para ser preenchida para determinado dado.

### Criando uma matriz em C

```c
int main(){

	int a[2][3];
	// Indicamos o tipo da matriz e a quantidade de coluna
}
```
- De uma forma menos abstrata e gráfica, a linguagem C vai criar um vetor de tipos inteiros contendo linhas e colunas. Anteriormente, a gente lidava exclusivamente com vetores que tinham lidavam apenas com linhas 

 $\begin{pmatrix} 0 & 0 & 0 & 0 \\ 0 & 0 & 0 & 0 \\  0 & 0 & 0 & 0 \end{pmatrix}$ - Aqui vamos lidar com uma matriz 2x3. (Lembrando que começa do 0 e não do 1) 

- Vamos supor que a gente queira acessar os elementos de uma determinada matriz, precisamos informar necessariamente suas posições, por exemplo:

```c
int main(){

	int a[2][3];
	// Indicamos o tipo da matriz e a quantidade de coluna
	a[1][2] = 10;
}
```

 $\begin{pmatrix} 0 & 0 & 0 & 0 \\  0 & 0 & 10 & 0 \\  0 & 0 & 0 & 0 \end{pmatrix}$ - Aqui estamos acessando na memória a linha 1 na coluna 2 inserindo o dado 10.
 
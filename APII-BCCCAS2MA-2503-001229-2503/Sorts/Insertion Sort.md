## Insertion Sort

2025-11-10 02:16
Status:
Tags:

---

# Conceitos Gerais

O insertion sort é um tipo de algoritmo que "divide" o array, basicamente, ele analisa os elementos dos vetores de par em par. Então, "inserimos" uma chave na posição correta na metade ordenada.

Considere o seguinte array: `12, 11, 13, 5, 6`. Ele vai analisar os dois primeiros elementos desse array todo

`[12, 11], 13, 5, 6` -> `[11, 12], 13, 5, 6` | Sabendo que já está ordenado, ele olha para com outro par

`[11, 12], 13, 5, 6` -> `11, [12, 13], 5, 6` | Está ordenado e não precisa trocar

`11, 12, [13, 5], 6` -> `11, 12, 5, 13, 6` | Ordenamos

`11, [12, 5], 13, 6` -> `11, 5, 12, 13, 6` | Ordenamos

`[11, 5], 12, 13, 6` -> `5, 11, 12, 13, 6` | Ordenamos

`5, 11, 12, [13, 6]` -> `5, 11, 12, 6, 13` | Ordenamos

`5, 11, [12, 6], 13` -> `5, 11, 6, 12, 13` | Ordenamos

`5, [11, 6], 12, 13` -> `5, 6, 11, 12, 13` | Ordenamos

Exemplo de código para uma análise:

```c
void insertionSort(int v[],int n){
	int chave, j;
	for(int i = 1; i<n; i++){
		chave = array[i];
		j = i-1 // J = 0 and I = 1
		while(j >= 0 && v[j] > chave){
			v[j+1] = v[j];
			j = j - 1;
		}
		v[j+1] = chave
	}
}
```



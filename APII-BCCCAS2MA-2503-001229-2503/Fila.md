## Fila

2025-11-12 18:33
Status: #developing 
Tags: [[datastructure]] [[fila]]

---

# Conceitos Gerais

De forma semelhante a pilha, a fila trabalha no modelo FiFo. No modelo FiFo, trabalhamos com os elementos da frente para trás e não de trás para frente. 

A fila podemos pensar que seja um modelo de estrutura de dados semelhante a Fila de um Supermercado, sendo assim, podemos realizar as seguintes operações:

`peek()` - Vai olhar o primeiro elemento
`rear()` - Vai olhar para o último elemento
`enqueue()` - Vai adicionar um elemento no final da fila
`dequeue()` - Vai remover o primeiro elemento da fila
`clear()` - Vai esvaziar a fila

Exemplo:

```c
enqueue(42); // {42}
enqueue(-3); // {42,-3}
enqueue(17); // {42,-3,17}
print(dequeue()) // {42} - {[],-3,17}
print(peek()) // {-3}
print(dequeue()) // {-3} - {[],[],17}
```

Vamos implementar fila na linguagem C

```c
int max[10];

int fila[max];
int frente -1,fim -1;

int peek(){
	if(frente == -1 || frente > fim){
		print("Fila vazia.\n");
		return;
	}
	return fila[frente];
}

void enqueue(int valor){
	if(fim == max-1){
		printf("Erro! Estouro de pilha.");
		return;
	}
	if(frente == -1){frente = 0}
	fim++;
	fila[fim] = valor;
}

void clear(){
	if(frente == -1 || frente > fim){
		printf("Erro! Fila está vazia.");
		return;
	}
	for(int i = frente; i <= fim; i++){
		pop();
	}
}

int pop(){
	if(frente == -1 || frente > fim){
		printf("Erro: fila já está vazia.");
		return -1;
	}
	frente++;
	return fila[frente-1];
}
```
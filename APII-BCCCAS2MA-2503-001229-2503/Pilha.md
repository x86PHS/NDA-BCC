## Pilha

2025-11-12 18:01
Status: #developing 
Tags: [[datastructure]] [[Tags/pilha]]

---

# Conceitos Gerais

Estrutura de dados é uma forma de organizar os dados no computador de forma que os dados possam ser acessados e usados eficientemente. As estruturas de dados seguem dois tipos: Lineares e Não Lineares.

Estruturas não lineares são os dados cujo não são organizados sequencialmente.

Estruturas lineares são aquelas cujo os dados estão organizados sequencialmente e cada elemento é ligado pelo mesmo tipo. Nas estruturas lineares existem dois tipos de dados dinâmicos, cujo pilha e fila.

A estrutura de dados pilha ela segue o padrão LiFo (Last in First out) o último dado a entrar é o primeiro a sair. Entretanto, podemos realizar vários tipos de operações como: Olhar para o topo, empilhar, desempilhar, esvaziar, tamanho etc.

`peek()` - Olhar para o topo
`push()` - Empilhar
`pop()` - Desempilhar
`clear()` - Limpar pilha
`isEmpty()` - Verificar se está vazio
`size()` -  Verificar o tamanho da pilha

Exemplo:

```c
push(10) // Colocamos o dado 10 {10}
push(12) // Colocamos o dado 12 {10,12}
push(15) // Colocamos o dado 15 {10,12,15}
pop() // Vai retirar o 15 {10,12}
peek() // Vai olhar o topo atual 12
push(20) // Colocamos o dado 20 {10,12,20}
pop() // Vai retirar o 20 {10,12}
pop() // Vai retirar o 12 {10}
pop() // vai retirar o 10 {}
pop() // Vai dar problema na pilha
```

Exemplo 2:

```c
push(7) // {7}
push(10) // {7,10}
print(peek()); // print({10})
print(pop()); // print({10})
push(3) // {7,3}
push(5) // {7,3,5}
print(pop()) // print({5})
print(size()) // print(2)
print(peek()) // print({3})
push(8) // {7,3,8}
print(pop()) // print({8})
print(pop())  // print({3})

// 10,10,5,2,3,8,3
```

Entendendo isso, quando colocamos para ele printar juntamente das funções, ele simplesmente visualiza a instrução e executa a instrução. Após executada, ele exibe o elemento que foi modificado pela instrução.

Implementação de pilhas na linguagem C

```c
int max = 10;

int pilha[max];
int topo = -1

int peek(){
	if(topo == -1){
		printf("A pilha está vazia.");
		return;
	}
	return pilha[topo];
}

void push(int valor){
	if(topo == max - 1){
		printf("Estouro de pilha.");
	}
	topo++;
	stack[topo] = valor;
}

int pop(){
	if(topo == -1){
		printf("A pilha já está vazia.");
		return -1;
	}
	topo--;
	return stack[topo];
}

void empty(){
	if(topo == -1){
		printf("A pilha já está vázia.");	
	}
	for(int i = topo; i > -1; i--){
		pop();
	}
}
```
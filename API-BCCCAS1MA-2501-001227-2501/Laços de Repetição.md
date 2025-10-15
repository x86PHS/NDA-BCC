# While

- A condição While se traduzir ao pé da letra é (Enquanto). O While vai executar determinada coisa enquanto determinada condição não for verdadeira, ou seja, o While ele trabalha com com uma execução verdadeira enquanto ela não dá falsa.
## Estrutura

- A estrutura do While é bem básica sua semântica, já que sua semântica é feita baseada em uma expressão condicional e com isso ele fica validando essa condição e executa o que está dentro do bloco de comandos

```c
while(<expression>){
 <commands block>
}
```

- Exemplo Prático:
```c
int y = 90, x = 0;

while(x < y){
	printf("Hello, World");
}
```
- Analisando sua semântica, faz sentido já que se assemelha bastante com a linguagem e compreensão humana.

# For

- A estrutura FOR foi feita devido a uma convenção feita por um programador já que, essa estrutura se assemelha bastante ao WHILE, mas havia funções que eram executadas no WHILE que poderiam ser simplificadas para um simples comando.
- Por exemplo, no WHILE a gente precisa de um inicializador, uma comparação e um incremento para poder executar determinada função que posteriormente foi simplificada para o FOR.

## Estrutura

```c
for(<type> <variable> = <value>;<expression>;<increment){
 printf("Hello, World");
}
```

- Exemplo prático:

```c
for(int c; c < 10; c++){
 printf("Hello,World");
}
```
- Basicamente ele vai executar conforme a comparação e após isso vai realizar o incremento e assim vai realizar a comparação e assim sucessivamente.
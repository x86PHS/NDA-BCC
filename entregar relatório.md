- O conceito de array basicamente é uma sequência adjacentes de elementos do mesmo tipo que são armazenados na memória. Os tipos de endereçamento que são feitos são DB e DW (Isso depende de contexto para contexto a critério do usuário). Um exemplo de array declarado na arquitetura 8086:

```asm
valores db 5,10,15,20,25
```

- Os elementos em um vetor são organizados por uma espécie de índices. Esses índices em si, traduzindo para uma linguagem de programação em C, seria um ponteiro e que analogamente é o SI do Assembly.

- Como o SI é o nosso ponteiro no vetor, para que a gente possa realizar o acesso dos elementos dos vetores, precisamos basicamente apontar para o vetor utilizando

```asm
lea si, valores
```

- Apontando, podemos simplesmente fazer as trocas de índices através dos brackets que serve justamente para pegarmos os endereços da memória

```asm
mov al, [si] ;Aqui estamos apontando para o primeiro endereço ou endereço 0 do vetor
```

- Para que se caso a gente precise se locomover no vetor, temos ideia que se em um caso base estamos utilizando dados do tipo `db`, esses dados podem ser incrementados como o número 1 ou outro número N qualquer dentro do número do vetor, isso ocorre justamente porque cada elemento na memória representa apenas 1 byte. Caso a gente faça com um array do tipo `db`, precisamos locomover dois espaços na memória de forma que a gente possa acessar os seguintes. 

Exemplo em DB:

```asm
numeros db 10,20,30,40,50

lea si, numeros
xor al, al
mov al,[si] ;SI no índice atual vale 0, logo foi movido o valor 10.
inc si ; SI = 0 + 1 = 1 
add al,[si] ;Moveu o SI para o segundo índice e fez a adição no registrador AL.
```

Exemplo em DW:

```asm
numeros db 100,200,300,400,500

lea si, numeros
xor al, al
mov al,[si] ;SI no índice atual vale 0, logo foi movido o valor 100.
inc si ; SI = 0 + 2 (2 * 8 = 16) = 2 
add al,[si] ;Moveu o SI para o segundo índice e fez a adição no registrador AL.
```

- Partindo dessa contextualização, nosso intuito é encontrar o maior elemento dado um vetor N de tamanho X. Para fins didáticos e prático, vamos utilizar um vetor N de tamanho DB para cada elemento.

```
org 100h
nums db 12, 45, 7, 63, 28
len equ nums

start:
	mov AL, [nums]
	mov cx, len -1
	mov si, 1

loop_max:
	CMP [nums+SI], AL
	JBE skip
	MOV AL, [nums+SI]
	
skip:
    INC SI
    LOOP loop_max
    mov ax, 4ch
    int 21h
    
end start
```

- O código por essencial vai assumir com que o primeiro índice do array seja o maior número de todo o array. Realizamos o decréscimo do LEN em CX, pois o CX é uma espécie de acumulador/contador e logo em seguida movemos 1 para SI para que a gente vá para a outra posição do Array que seria a segunda posição.

- Na função/procedure LOOP_MAX a gente compara o valor que está em AL como `AL >= [nums+SI]`, caso o número que a gente esteja apontando seja menor ou igual, ele vai pular para SKIP e realizar o incremento de SI, caso ao contrário, ele vai mover o valor que estamos apontando com o SI no array e vamos seguir com o código. (Um detalhe, pela documentão, a instrução LOOP baseia-se no CX, sendo assim, ele faz um decremento em CX até que seja <= 0). 

- Ao fim, assim que ele terminar decremento de CX, ele vai simplesmente passar para as próximas instruções e finalizar o programa.
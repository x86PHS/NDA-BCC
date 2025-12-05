## Introdução ao Assembly

2025-10-15 17:47
Status: #developing
Tags: [[assembly]] [[LowLevel]] 

---

# Conceitos Geral

- Assembly é uma linguagem fundamental, já que todas as linguagens de alto nível são compiladas e traduzida para assembly para que seja interpretado e lido pela máquina.

- Na linguagem assembly a gente manipula o código geral em símbolos alfanuméricos, sendo eles baseados em instruções. As instruções são feitas por Opcodes e Operandos; Opcodes são as operações a serem feitas como: ADD/MOV etc. Operandos são os registradores que vão ser utilizados para que processam os dados movimentados pelos opcodes.

- Sintaxe mais básica do Assembly seria a de um opcode e de operandos como: `MOV AX,BX` significa basicamente mover o que está em `BX` para `AX`

- Existem 3 tipos de operandos para instruções no 8086, sendo eles: **Operando de Registrador** - Operando fácil acesso, tamanho da instrução é reduzido e não requer acesso no barramento. **Operando Imediato** - Codificado nos valores de 1 ou 2 bytes que representam constantes no sistema e que podem ser apenas operandos de origem. **Operandos de Memória** - São operandos para acesso de memória de modo que exigem cálculo de endereçamento para transferências pelo barramento e são mais lentos.

##### Tipos de Registradores

| Dados       | AX, BX, CX, DX | Operandos de operadores aritméticos e movimentadores de dados            |
| ----------- | -------------- | ------------------------------------------------------------------------ |
| Segmento    | CS, DS, SS, ES | Segmentos de código, dados, pilha e extra para endereçamento segmentado. |
| Ponteiros   | SP, BP         | SP = Stack Pointer (topo da pilha); BP = Base Pointer                    |
| Indexadores | SI, DI         | Source Index e Destination Index (operações com strings e memória)       |
| Flags       | FLAGS          | Bits de estado e controle (ZF, CF, SF, OF, PF, AF, TF, IF, DF).          |
| Instrução   | IP             | Instruction Pointer (endereço da próxima instrução a executar).          |

#### Tipos de endereçamento

| Modo                          | Exemplo             | Descrição                                                                                                                                                                                                                                 | Analogia |
| ----------------------------- | ------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| Imediato                      | `MOV AX, 1234H`     | Basicamente o valor dado é uma constante, da qual não precisa procurar em outro lugar                                                                                                                                                     |          |
| Registrador                   | `MOV AX, BX`        | A instrução indica para que seja copiado o conteúdo de BX para AX                                                                                                                                                                         |          |
| Direto                        | `MOV AX, [1234H]`   | Os colchetes servem para indicar valores fixos da memória, sendo assim, a instrução faz o acesso no conteúdo que está nesse endereço e joga para AX                                                                                       |          |
| Indireto                      | `MOV AX, [BX]`      | Nesse caso, o endereço de memória não está fixo e sim em um registrador. Em uma analogia, seria um ponteiro. O ponteiro aponta para uma memória, sendo assim, você faz o acesso a memória não fixa e copia o conteúdo dela pelo ponteiro. |          |
| Baseado                       | `MOV AX, [BP+4]`    | Ele faz o acesso ao ponteiro BP e soma 4 ele e o resultado disso faz com que ele acesse o endereço final memória final para tal dado. Como: BX = 400h \| 400h + 4 = ... -> Resultado que ele vai acessar                                  |          |
| Indexado                      | `MOV AX, [SI+4]`    | Semelhante ao baseado, ele utiliza índices para deslocamento. Esse tipo de endereçamento é útil em contextos de manipulação de arrays.                                                                                                    |          |
| Baseado-Indexado              | `MOV AX, [BX+SI]`   | Ele como os demais baseado e indexado, ele pega os valores contidos em ambos e soma, o resultante se dá o endereço final para acesso na memória.                                                                                          |          |
| Baseado-Indexado-Deslocamento | `MOV AX, [BX+SI+8]` | Basicamente ele combina ambos registradores e faz uma soma a mais para que seja acessado o conteúdo na memória.                                                                                                                           |          |

#### Código base

<img src="../Images/codebase.png"<img>

- **``offset msg``** está puxando na memória o local da variável **msg**
- **``mov ah,09h``** executa a função do DOS para imprimir uma string. Sendo assim, ele puxa desse registrador acima dele e faz a impressão.
- **``mov ax,4C00h``** o código **4Ch** faz a chamada de terminate process do programa e o **00h** define o código de retorno para a execução, no caso sendo assim de exit code.
- **``end <rotulo>``**  serve para determinarmos e definir o início e fim da execução.

> Uma boa prática é definir variáveis e procedures no final do código.

---

 # Referências
 
https://mietbhandara.ac.in/uploaded_files/8086_family_Fifth_Sem.pdf
http://ref.x86asm.net/coder32.html
https://github.com/andreluispy/assembly4noobs


---

 # Bibliografia
 
- TOCCI, R.; WIDMER, N.; MOSS, G. Sistemas Digitais – Princípios e Aplicações. [S.l.]: Pearson Education Limited, 2011.
- FEDELI, Ricardo Daniel. Introdução à ciência da computação / Ricardo Daniel Fedeli, Erico Giulio Franco Polloni, Fernando Eduardo Peres. – 2. ed. – São Paulo: Cengage Learning, 2011.
- TANENBAUM, Andrew S.. Organização Estruturada de Computadores. 6º Edição. São Paulo, Pearson Prentice Hall, 2013.
- Patterson, David A., e John L. Hennessy. _Organização e Projeto de Computadores: A Interface Hardware/Software._ Editora LTC.
- Stallings, William. _Arquitetura e Organização de Computadores._ Editora Pearson.
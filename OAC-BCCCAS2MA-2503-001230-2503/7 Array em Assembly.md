## Array em Assembly

2025-10-22 08:34
Status: #developting 
Tags: [[assembly]] [[algoritmos]]

---

# Conceitos Gerais

- Array é uma sequência contínua de dados do mesmo tipo que ficam armazenados na memória, com assembly a gente precisa definir se os dados vão ser WORD (dw) ou Byte (db).

```assembly
valores db 5, 10, 15, 20, 25
```

- O `db` em si é um identificador para indicar que é um vetor. Pense como uma string de posições para cada número de forma que ele fique `[5][10][15][20][25]`

```assembly
LEA SI, valores
MOV AL, [SI] //SI inicia zero e ele vai pegar a posição 0
INC SI // +1
MOV AL, [SI] // Vai pegar a próxima posição
```

- Quando você carrega a variável do vetor em um registrador, o registrador carrega a primeira posição do vetor e não os outros elementos.

---

# Referências
## Minimização

- A minimização do diagrama ER serve para reduzir a quantidade de informações no diagrama, de forma que fique mais legível e compreensível para um possível administrador de sistema. A gente faz a redução conforme a cardinalidade.

#### Cardinalidades

- One2One: Quando temos uma cardinalidade dessa (Ex: Uma pessoa pode ter apenas uma mulher e uma mulher pode ter apenas um homem) isso se torna um para um. Logo, podemos fazer a junção em uma tabela apenas já que não haverá conflito.

- One2Many: Temos uma entidade relacionada a vários registros (Ex: Uma pessoa tem apenas dois pais, mas esses dois pais podem ter vários filhos) logo precisamos criar uma terceira tabela para mesclar esses dados. Fazendo assim, com que o registro do lado um vá para o lado Many como FK.

- Many2Many: Neste caso precisamos necessariamente criar uma terceira tabela que envolva essas duas entidades. Exemplo, um aluno pode ter vários cursos e um curso pode ter vários alunos, logo criamos FK para conectar essas ambas tabelas.
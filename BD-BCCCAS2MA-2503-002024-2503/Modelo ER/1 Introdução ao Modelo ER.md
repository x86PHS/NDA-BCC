## Introdução ao Modelo Entidade Relacional

- O Modelo ER é uma forma conceitual para desenhar e entender como funciona bancos de dados e sua estrutura lógica, completamente útil e eficiente quando vamos montar bancos de dados complexos. Através dele podemos entender Entidades, Relações e atributos de um dado banco de dados.

- **Entidade** é um objeto do qual vai armazenar dados, um exemplo: Estudante, Empresa ou Faculdade. Já um **atributo** são propriedades que descrevem essas entidades, como: Identificador de estudante, nome da empresa ou nota do mec. **Relacionamento** é basicamente a ligação entre essas entidades se há algum ligamento, um exemplo seria: Um estudante está na faculdade e tem um emprego - Um estudante ele tem matricula na faculdade e tem um emprego, porém, a faculdade e o emprego não há ligação.

### O que é uma entidade

- Entidade representa objetos da vida real, conceitos ou coisas das quais dados são armazenados em banco de dados. Exemplos da vida real: Carros, pessoas, Empregados, Cursos, Eventos, Reservas, Produtos, documentos, aparelhos etc.
- A coleção de várias entidades são chamadas de Entity Type. Um exemplo de entity type seria que uma entidade geral é a casa e o entity type é a planta da casa. A entidade podemos utilizar como algo mais específico, entretanto, o tipo de entidade é algo mais generalizado.

### Tipos de entidade

- Entidade Forte / Strong Entity: É um tipo de entidade que não depende de outra para existir, ela tem uma chave de atributo única da qual faz com que ela seja independente para existir. 
- Entidade Fraca / Weak Entity: É uma entidade da qual precisa de outra/outras para poder existir, ela não tem identificadores únicos com que faz que ela seja independente. 

- Ex: Uma empresa que busca armazenar dados de seus empregados, o seus empregados é uma entidade forte, já que eles contém seus registos únicos dentro da empresa etc. Já se a gente for armazenar os dados dos parentes desses empregados, esses dados dá a origem de uma entidade fraca, já que sem empregados não existe essa entidade.

### Atributos ER

- Os atributos são elementos das quais são identificadores ou que estão ligados aos tipos de entidades existentes. Isso quer dizer que, imagine se a gente for armazenar dados dos empregados da empresa, através desses dados temos vários atributos como: número, endereço, idade, registro na empresa, cpf, rg etc.

#### Tipos de Atributos

- Atributo chave: O atributo chave é um elemento que identifica unicamente determinada entidade. Por exemplo, registro dentro do curso como ID.
- Atributos compostos: São atributos que surgem através de um outro. Ou seja, uma entidade principal estudante, temos dados como rg, cpf e endereços... Entretanto, através de um endereço, temos cidade, país, estado etc.
- Atributo multi-valor: São atributos dos quais podem ter não apenas um atributo atrelado a ele. Imagine que um estudante tenha um Telefone, porém, ele pode ter vários números de uma vez só.
- Atributo derivado: são atributos que derivam de outros, exemplo: A idade do estudante pode ser derivado do seu CPF.

### Tipos de Relacionamento

- Um tipo de relacionamento é que associa duas entidades, por exemplo: Um aluno `<Comprou>` Um Curso. Isso faz com que o aluno tenha associação entre um curso e sendo ele uma entidade.

### Níveis de Relacionamento

- Relação Recursiva: É um tipo de relacionamento de um para um, isso quer dizer que, apenas uma entidade pode estar participando de uma relação. Ex: Um homem pode estar casado apenas com uma mulher.

- Relação binária: Uma relação binária é quando há exclusivamente duas entidades fazendo parte de um relacionamento.

- Relações N: São relações que envolvem N tipos de entidades que se relacionam entre si.

### Cardinalidade no Modelo ER

- Cardinalidade basicamente nos diz como demonstramos e imaginamos a quantidade de relacionamentos entre entidades. Tendo em vista isso:

- Um para um / one-to-one: É uma cardinalidade da qual uma entidade se envolve apenas com uma outra.

- One-to-many: É uma cardinalidade da qual uma entidade pode se envolver com várias outras

- Many-to-one: É quando várias entidades podem se relacionar com uma outra ao mesmo tempo

- Many-to-many: É um tipo de relacionamento quando são várias entidades que se envolvem com várias outras ao mesmo tempo.
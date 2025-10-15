### Superclasses e Subclasses

- Superclasses é um conjunto de entidades de nível superior que ditam características em comum dos atributos. Já subclasses é um conjunto de entidades de nível inferior que herda atributos e relacionamentos de sua superclasse, mas que ainda sim possui seus atributos e relacionamentos. Ex: Ciências é uma superclasse e tem como subclasse Física, Química e Biologia.

## Generalização e Especialização

- Subclasses são classes especializadas, de modo que Superclasses são classes generalizadas que engloba um todo. Uma função de distinguir essa generalização é utilizando "É um" de modo que: Notebook é um Computador, Um enfermeiro é um funcionário.

1. Subclassificação total ou parcial - Subclassificação total pode ditar que uma entidade deve estar em pelo menos uma subclasse (por exemplo, um funcionário (Superclasse) é assalariado ou recebe por hora (Subclasse)) / Parcial dita que algumas pode não pertencer a nenhuma subclasse (Nem todos os funcionários são secretárias, engenheiros ou técnicos)

2. Subclassificação disjunta e sobreposta - Uma subclassificação disjunta diz em relação a uma entidade que pertence apenas a uma subclasse (Como salário e trabalho, são entidades disjuntas) e sobrepostas são entidades que pertencem a várias subclasses.

3. Categoria ou tipo de união - Tipo de união é uma subclasse derivada de duas superclasses que pode não estar diretamente relacionadas. Ex: A subclasse Biblioteca pode ser derivada por Alunos, Professores e Funcionários do local.

4. Herança de atributos e relacionamentos - Uma entidade pode ser subclasse de outras entidades e essas entidades podem ser subclasses dentre outras etc. Porém, por essência, há uma herança de várias atitudes que são seus atributos, isso ajuda a evitar a redundância. Ex: Se um funcionário tiver atributos como Nome e ID, todas as subclasses como Gerente ou Engenheiro terão esses atributos.
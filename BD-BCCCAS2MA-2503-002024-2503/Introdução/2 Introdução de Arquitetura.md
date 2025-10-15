## Arquitetura L1

- Esse tipo de arquitetura utiliza-se de uma forma simples do banco de dados. Basicamente, esse tipo de arquitetura o usuário normalmente utiliza na própria máquina e dessa forma é armazenado e modificado localmente. O usuário em si pode ter contato diretamente com o banco de dados para poder modificar e implementar os dados.
- Nessa arquitetura há vantagens e problemas, porém, seus principais problemas estão relacionados a: segurança, backup, compartilhamento dos dados e acesso. Já que, localmente, só é possível os dados serem acessados simultaneamente apenas por uma máquina.

## Arquitetura L2

- A arquitetura utiliza um esquema onde há duas camadas. Essas duas camadas são conhecidas como: Client Side e Server Side. Os usuários através do client side tem mecanismos de conexão para poderem entrarem no banco de dados e requisitarem o que quiserem. Entretanto, pode ser um desafio para o servidor caso haja a necessidade de atualização conforme a escalabilidade de usuários e vai haver erros de segurança devido a conexão direta dos usuários para com o servidor. 
## Arquitetura L3

- Na arquitetura de Level 3, temos um mecanismo chamado de "Application Server" que serve com intermediário entre o client side e o server side, já que ele pode receber as consultas e dados e interagir com o banco de dados diretamente abstraindo do usuário comum o banco principal. Isso faz com que, o banco de dados tenha uma camada relevante de segurança. Entretanto, alguns problemas como: Lentidão, dificuldade de interação e ter custo maior podem surgir devido a estruturação de um banco de dados desse. 
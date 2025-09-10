### O que é a Avalição de Desempenho

- A avaliação de desempenho computacional é útil para que a gente possa observar e realizar métricas de performance computacional. Ou seja, entender e determinar como o computador reage no processamento de determinadas aplicações, conjuntos de instruções e de eficiência computacional.
- Principais métricas de desempenho: Tempo de CPU, Tamanho da Máquina, Custo do Hardware em relação a Performance, Demanda por memória, Overhead de comunicação, Demandas de I/O, Custo de Instruções/Programação.

### Limites de Desempenho

- Limites Arquiteturais: Latência e Largura de Banda, Coerência de dados e capacidade da memória.
- Limites Algorítmicos: Falta de paralelismo, Frequência de comunicação e Sincronização, Escalonamento Deficiente.

### Métricas de Desempenho

- Métricas de Desempenho para Processadores: Essas métricas utilizamos para ter uma base de como é o desempenho do processador em determinadas funções e tarefas que consegue executar dado um tempo.
- Métricas de Desempenho para Aplicações Paralelas: Métrica que permite a compreensão da performance de um processador ou de vários processadores trabalhando em determinada aplicação.

### Métricas de Processadores

- MIPS: acrónimo para Millions of Instructions Per Second.
- FLOPS: acrónimo para FLoating point Operations Per Second.
- SPECint: conjunto de programas de teste (benchmarks) da SPEC (Standard Performance Evaluation Corporation) que avaliam o desempenho do processador em aritmética de inteiros (1992).
- SPECfp: conjunto de programas de teste da SPEC que avaliam o desempenho do processador em operações de vírgula flutuante (2000).
- Whetstone: programa de teste sintético que avalia o desempenho do processador em operações de vírgula flutuante (1972).
- Dhrystone: programa de teste sintético que avalia o desempenho do processador em aritmética de inteiros (1984)

 $$
 n = \frac{D(b)}{D(a)}$$
 - Medição para comprar o desempenho entre dois sistemas
$$
N = \frac{1}{\frac{t(b)}{\frac{1}{t(a)}}}$$

#### Speedup

- O Speedup é útil para nós para que a gente possa medir quanto performático algo ficou em relação a outro tempo. Um exemplo disso seria: Temos uma tarefa que apenas você fazendo vai demorar por volta de 10 horas. Entretanto, contratando algumas pessoas a perspectiva mude para 2 horas. Quanto mais rápido ficou?

$$
S = \frac{t(v)}{t(n)}$$
$$
S = \frac{t(10)}{t(2)}=5$$
Logo a tarefa ficou 5 vezes mais rápida a ser executada.

- Dada uma tabela contendo números de processadores e o tempo de execução conforme o tempo, para a gente comparar e ter o speedup precisamos basicamente pegar o tempo de execução com 1 processador e comprar com os demais. Ex:

$t(1) =1000$ | $t(2)=520$ ....

$$
s(2)=\frac{1000}{520}=1.92$$
- Observamos que paralelizado com dois processadores o speedup ficou 1.92x mais rápido.
- Conforme aumentamos o número de CPUs trabalhando, isso significa que a performance aumenta. Entretanto, vai chegar um número que vamos ter limite para paralelizar.
#### Eficiência

- Eficiência se mede pela razão do Speedup pela quantidade de processadores. Isso custa dizer que se caso $e(p)=1$ for o caso, temos um uso perfeito do qual o processador está distribuído totalmente eficiente. Entretanto, caso o uso seja $e(p) <1$ observamos que há uma capacidade sendo desperdiçada. Ex: $S(2) - e(2)$

$$
\frac{S(P)}{E(P)}=\frac{S(2)}{E(2)}=0.96
$$
- Sendo assim, quanto mais processadores forem utilizados, menor vai ser a eficiência.

#### Lei de Amdahl

- Basicamente a lei de Amdahl serve para definir o ganho de desempenho máximo que pode ser alcançado ao paralelizar uma aplicação de forma que ela é limitada por uma parte sequencial. Sendo assim, pegamos a porcentagem da sequencial e calculamos.

$$S(P)\leq \frac{1}{f+\frac{1-f}{P}}$$
- Sendo assim, o resultado que vamos receber aqui vai ser o cálculo do Speedup máximo que vamos receber. Entretanto, se o cálculo exigido for apenas do Speedup máximo com processadores infinitos, basta fazer:
$$
\frac{1}{f}$$
- Exemplo Exercício
```
Suponha que você pretende determinar se é vantajoso desenvolver uma versão paralela de uma determinada aplicação sequencial. Por experimentação, verificou-se que 90% do tempo de execução é passado em procedimentos que se julga ser possível paralelizar. Qual é o speedup máximo que se pode alcançar com uma versão paralela do problema executando em 8 processadores?
```

$$
\frac{1}{0.1+\frac{1-0.1}{8}}=\frac{1}{0.1+\frac{0.9}{8}}=\frac{1}{0.1+0.1125}=\frac{1}{0.2125}=4.71
$$

```
Um programa leva 200 segundos para rodar em 1 processador. Pelo perfil de execução, descobriu-se que 80% do código pode ser paralelizado. Qual será o speedup máximo se o programa for executado em 4 processadores? E o seu novo tempo?
```

$$
\frac{1}{0.2+\frac{1-0.2}{4}}=\frac{1}{0.2+\frac{0.8}{4}}=\frac{1}{0.2+0.2}=\frac{1}{0.4}=2.5
$$
$$
2.5=\frac{200}{s(n)}=s(n)=\frac{200}{2.5}=80s\to\frac{200}{80}=2.5
$$
### Speedup Com Aceleração

$$
S = \frac{1}{(1-f)+\frac{1}{K}}
$$
$$
Smax=\frac{1}{(1-f)}
$$

- Exemplo Exercício

```
Suponha que um compilador otimiza as instruções de acesso à memória, tornando-as 4 vezes mais rápidas. Antes dessa melhoria, o tempo de execução de um benchmark era de 20 segundos, dos quais 40% do tempo era gasto
em acessos à memória.

a. Qual será o speedup após essa melhoria?
b. Qual o speedup máximo teórico que poderia ser alcançado neste benchmark apenas com essa otimização?
```

$$
S=\frac{1}{(1-0.4)+\frac{0.4}{4}}=\frac{1}{(0.6)+0.1}=\frac{1}{0.7}=1.43
$$
$$
\frac{20}{1.43}=14s
$$
$$
Smax=\frac{1}{(1-f)}=\frac{1}{1-0,4}=\frac{1}{0.6}=1.67
$$
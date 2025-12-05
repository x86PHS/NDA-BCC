use Pokedex

select * from Pokemon

-- 1> Peso do pokemon mais pesado: 460.00
select max(peso) from pokemon

-- 2> Quantos pokemons tem menos de 10 kg: 40
select count(*) from pokemon where peso < 10

-- 3> Qual a altura media dos pokemons da categoria 860: null
select avg(altura) from pokemon where codcategoria = '860'

-- 4> Qual a altura do pokemon mais baixo: 0.20
select min(altura) from pokemon

-- 5> Qual o pokemon de maior imc: HAUNTER
select max(peso/power(altura,2)) as 'IMC' from pokemon 

-- 6> Qual o peso médio de cada categoria de pokemon:
select codCategoria,avg(peso) as 'Peso Médio' ,avg(altura) as 'Altura Média' from pokemon group by codCategoria

use pubs

select * from titles

-- 7> Crie uma relação que mostra quantos livros começam com cada letra
select substring(title,1,1), count(*) from titles group by substring(title,1,1)

-- 8> quantos livros foram publicados em cada ano
select year(pubdate),count(*) from titles group by year(pubdate)

-- 9> Quantos funcionadores de cada trabalho por jobid
select job_id,count(*) from employee group by job_id 
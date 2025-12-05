-- Função: cast(value as (varchar/int/float))

select title, 'R$ '+ cast(price as varchar) from titles where price is not NULL

select title, cast(type as int) from titles

select title as 'Títulos',isnull(price,0) as 'Preços'
from titles

-- Funções de Agregação e Agrupamento

select max(price),min(price),sum(price),avg(price) from titles
select max(ytd_sales), min(ytd_sales), avg(ytd_sales) from titles

select count(title) from titles

select sum(price) from titles

select sum(price) / count(price) from titles

select avg(price), 246.26 / 17 from titles

select count(title) from titles where price is not null

select count(*) from titles

select count(*) from authors

select max(price), min(price), avg(price) from titles

select max(price) from titles

select max(price),min(price),count(*),avg(price) from titles where type = 'psychology'

select max(price),min(price),count(*),avg(price),sum(price) from titles where type = 'business'

select sum(price) / count(*) from titles where type = 'business'

select sum(price * ytd_sales) as 'Faturamento' from titles

-- MENOR ADIANTAMENTO DE LIVROS QUE CUSTAM MAIS QUE 15
select min(advance) from titles where price > 15

-- MAIOR ADIANTAMENTO DE LIVROS QUE CUSTAM MAIS QUE 15
select max(advance) from titles where price > 15

/*
AGRUPAMENTO
*/

select avg(price) from titles where type = 'psychology'

select avg(price) from titles where type = 'business'

select type,
	   avg(price) as 'Valor Médio',
	   count(title) as 'Quantidade de Livros',
	   sum(price) as 'Valor Total dos Livros'
from titles where price is not null group by type

select type,'R$ ' + cast(max(price) as varchar) as 'Livros mais caros' from titles where price is not null group by type

select pub_id as 'Editora',count(*) as 'Livros da Editora' from titles where pub_id is not null group by pub_id

/*
Quando realizamos um agrupamento 
por algum campo específico
a gente acaba agrupando separando
*/

select state,count(*) from authors group by state

select state, city, count(*) from authors group by state,city order by 1 asc

select type as 'TIPOS DE LIVRO',
	   pub_id as 'EDITORA',
	   'R$ ' + cast(sum(price * ytd_sales) as varchar) as 'FATURAMENTO' 
from titles 
group by type,pub_id
order by type,pub_id

select pub_id as 'EDITORA',count(*) as 'QUANTIDADE DE FUNCIONÁRIOS' from employee group by pub_id order by 2 asc

select pub_id,count(*) from employee where fname like '%e%' or lname like '%e%' group by pub_id

select * from employee where fname like '%e%' or lname like '%e%'
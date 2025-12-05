use pubs

/*
Fazer o JOIN é basicamente juntar tabelas
*/

select * from titles
select * from publishers

select title, pub_name 
from titles inner join publishers
	on titles.pub_id = publishers.pub_id


/*
SELECT <select list>
from tabela1 inner join tabela2
*/

/* INNER JOIN: Ela pega a intercessão*/

select * from titles
select * from publishers

select p.pub_id,pub_name,title,price 
	from titles as T 
	inner join 
	publishers as P
	on t.pub_id = p.pub_id

-- Alias de Tabelas não colocamos como string e colocamos ao lado da Tabela

/*
Exercício

Select que faz Nome, Sobrenome e Pega a descrição do seu trabalho conforme o Job_id
*/

select * from jobs
select * from employee

select fname + ' ' + lname as 'Funcionarios', j.job_desc as 'Descrição de Cargo'
	from employee as E
	inner join
	jobs as J
	on e.job_id = j.job_id

use Pokedex

/*
Exercício

Trazer nome do pokemon e sua categoria
*/

select * from pokemon
select * from Categoria

select nome, nmCategoria
	from pokemon as p 
	inner join 
	Categoria as c 
	on c.codCategoria = p.codCategoria

select nome, nmCategoria
	from pokemon as p 
	inner join 
	Categoria as c 
	on c.codCategoria = p.codCategoria
	where nmCategoria = 'Flame' or nmCategoria = 'Magnet'

select nome, nmCategoria
	from pokemon as p 
	inner join 
	Categoria as c 
	on c.codCategoria = p.codCategoria
	where nmCategoria in ('Flame','Rock')

select nome, nmCategoria
	from pokemon as p 
	inner join 
	Categoria as c 
	on c.codCategoria = p.codCategoria 
	order by nmCategoria

select * from Categoria

select nmCategoria, count(*) 
	from Categoria as c
	inner join
	Pokemon as p
	on c.codCategoria = p.codCategoria
	group by nmCategoria
	order by 2 desc

use pubs

select * from titles
select * from publishers

select pub_name, count(*) 
	from publishers as p
	left join
	titles as t
	on p.pub_id = t.pub_id
	group by pub_name
	order by count(*) desc

select * from titleauthor
select * from titles
select * from authors

select a.au_lname + ' ' + a.au_fname as 'Autores',t.title as 'Títulos'
	from authors as a
	inner join
	titleauthor as ta
	on a.au_id = ta.au_id
	inner join
	titles as t
	on ta.title_id = t.title_id 
	
use Pokedex

select * from Pokemon
select * from TipoPokemon
select * from Tipo

/*
Exercício
Fazer um inner join entre pokemon, tipopokemon e tipo trazendo o nome do pokemon e seu tipo
-- FAZER
*/
 
use pubs

select * from titles
select * from publishers

/*
LEFT JOIN: Traz a intercessão e a esquerda da relação
*/

select pub_name, title, price
	from
	publishers p
	left outer join
	titles t
	on t.pub_id = p.pub_id

select pub_name, title, price
	from
	titles t
	right outer join
	publishers p
	on t.pub_id = p.pub_id
	where t.pub_id is null


select pub_name, title, price
	from
	titles t
	full join
	publishers p
	on t.pub_id = p.pub_id
	where t.pub_id is null or p.pub_id is null
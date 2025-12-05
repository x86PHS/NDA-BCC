-- 1> Faturamento total do ano de todos os livros publicados: 1055508,72
select sum(ytd_sales * price) from titles

-- 2> Utilize as tabelas employee e jobs e exiba ccada empregado com seu respectivo cargo

select * from jobs
select * from employee

select fname + ' ' + lname as 'Empregados',job_desc 'Cargo' 
	from employee as e
	inner join
	jobs as j
	on j.job_id = e.job_id

-- 3> Utilize as tabelas publishers e employee e exiba cada editora com seus respectivos funcionarios

select * from publishers
select * from employee

select pub_name as 'Editoras', e.fname + ' ' + e.lname as 'Empregados' 
	from publishers as p
	inner join
	employee as e
	on e.pub_id = p.pub_id
	order by pub_name

-- 4> Exiba todos os livros cujo preço é menor que a média do preço dos livros de psicologia

select * from titles

select * from titles 
		 where price < (select avg(price) 
						from titles 
						where 
						type = 'psychology')

-- 5> Exiba todos os cargos, e a quantidade de funcionarios de cada cargo mesmo que seja igual a zero

select * from employee
select * from jobs

select job_desc,count(*) as 'Quantidade de Funcionários'
	   from jobs as j
	   inner join
	   employee as e
	   on j.job_id = e.job_id
	   group by job_desc

-- 6> Exiba os autores que vivem na mesma cidade de uma editora

select * from authors
select * from publishers

select au_lname + ' ' + au_fname,p.pub_name, p.city
	   from authors as a
	   inner join
	   publishers as p
	   on a.city = p.city

/*
USAR POKEDEX
*/

use Pokedex

-- 7> Para cada pokemon, exiba seu nome e o nome de quem ele evolui

select * from pokemon

select p1.nome, p2.nome
	   from pokemon as p1
	   inner join
	   pokemon as p2
	   on p2.codPokemon = p1.evoluiDe

-- 8> Exiba uma relação de cada pokemon e seus tipos

select * from Pokemon
select * from TipoPokemon
select * from Tipo

select nome as 'Nome', t.nmtipo as 'Tipo do Pokemon'
	   from Pokemon as p
	   inner join
	   TipoPokemon as tp
	   on tp.codPokemon = p.codPokemon
	   inner join
	   tipo as t
	   on t.codTipo = p.codPokemon

-- 9> Exiba uma relação de todos os pokemons que tem fraqueza para 'steel'

select * from Fraqueza
select * from Pokemon
select * from Tipo

select * from pokemon where nome like 'pikachu'
select * from Fraqueza where codPokemon = 25
select * from tipo where codTipo = 28

select nome,t.nmTipo from 
	   pokemon as p
	   inner join
	   fraqueza as f
	   on p.codPokemon = f.codPokemon
	   inner join
	   tipo as t
	   on t.codTipo = f.codTipo
	   where t.nmTipo like 'steel'
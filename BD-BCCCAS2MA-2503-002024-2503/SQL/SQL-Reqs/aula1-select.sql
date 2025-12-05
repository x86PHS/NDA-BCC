-- Exemplo 1: Trazer título, preço de títulos --
select Title as 'Títulos', 
	   Price as 'Valores', 
	   Type as 'Tipos'
from Titles

-- --

select title as 'Título', 
	   price as 'Preços'
	   from titles where price <> 10

-- SELECT - FROM - WHERE

select title, price, price from titles where (price = 15 or price >= 5)


---

select * from publishers where state <> 'CA' or state is NULL
-- --

select getdate()

-- --
select pub_name 
from publishers

-- SELECT LIST são os atríbutos de campo que fazemos a consulta do select --

select price,title, type from titles
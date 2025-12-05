/*
SUBQUERIES 
*/

select title, price from titles
	where price = (select max(price) from titles)

select * from titles
select * from publishers

select city,pub_name,title 
	from titles as t
	inner join
	publishers as p
	on t.pub_id = p.pub_id
	where p.city = 'Boston'

use Pokedex

select nome,peso from Pokemon where peso = (select max(peso) from pokemon)
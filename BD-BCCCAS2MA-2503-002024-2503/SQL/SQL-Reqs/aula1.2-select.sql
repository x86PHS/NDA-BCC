select * from titles where price is not null

--- 19 Livros 
--- 12 Livros custam mais que 10 (where price > 10)
--- 4 Livro que custam menos que 10 (where price < 10)
--- 3 Livros que Não conhecemos o valor
--- 17 livros não nulos

--- Livros com preços entre 5 e 15
select * from titles where price > 5 and price < 15

--- Livros que não são maiores que 15
select * from titles where not price < 15

/*
1 - AND
2 - OR
3 - NOT
*/

--- Precêdencia de AND e OR

select title, price, type, pub_id from titles where pub_id = '1389' and (price > 15 or type = 'psychology')

--- Procurar livros de um determinado tipo

select title, price, type, pub_id from titles 
where title like '%computer%'

--- O coringa para caracteres "%" serve para que a gente procure alguma palavra em qualquer lugar

select title from titles where title like '%f%'

--- Quando queremos order, precisamos indicar que queremos ordenar qual coluna

select title, price,type from titles where type like 'psychology' order by price

select title, price, type, pub_id from titles where price is not null order by price

select title, price, type, pub_id from titles order by price desc, title asc
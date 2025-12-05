select max(peso) as 'Maior Peso' from Pokemon
select count(*) from Tipo
select count(*) from Pokemon where peso < 10
select avg(altura) from Pokemon where codCategoria = 160
select min(altura) from Pokemon
select nome AS 'NOME',altura AS 'ALTURA',peso AS 'PESO',peso/power(altura,2) as IMC from Pokemon order by 4 desc
select codCategoria,avg(peso) as 'Media Peso' ,avg(altura) as 'Media Altura' from Pokemon group by codCategoria order by 3 desc
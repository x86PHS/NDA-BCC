```sql
select * from jogo
select id, titulo from jogo where plataforma='PC'

select *
from jogo j
join avaliação a
on j.id == a.id.jogo
where j.id = 1 or a.idjogo is NULL

select count(a*) as num_avaliacoes
from jogo j
join avaliação a
on j.id == a.id.jogo
group by 'titulo'

select avg(a.nota) as media_avaliacoes
from jogo j
join avaliação a
on j.id == a.id.jogo
group by 'titulo'

select min(a.nota) as minimo_avaliacoes
from jogo j
join avaliação a
on j.id == a.id.jogo
group by 'titulo'

select avg(a.nota) as media_avaliacoes
from jogo j
join avaliação a
on j.id == a.id.jogo
group by 'titulo'
order by media_av desc

select top(1),avg(a.nota) as media_avaliacoes
from jogo j
join avaliação a
on j.id == a.id.jogo
group by 'titulo'
order by media_av desc

select top(1),avg(a.nota) as media_avaliacoes
from jogo j
join avaliação a
on j.id == a.id.jogo
group by 'titulo'
order by media_av asc

SELECT player_id, min(event_date) as first_login
FROM Activy
group by plyaer_id

SELECT name, bonus
FROM Employee E
LEFT join bonus B on E.empID = B.empId
where B.bonus IS NULL or b.bonus < 100-
```
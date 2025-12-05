select * from Pokemon
select * from categoria where nmCategoria like 'flame'

-- 7
select codCategoria from pokemon where codCategoria = 121

-- 8
select * from pokemon where codCategoria = '121'

-- 9
select * from pokemon where altura > 2 and peso < 100

-- 10
select * from pokemon where evoluiDe is NULL

-- 11
select * from tipo where nmTipo like '% %'

-- 12
select datediff(day,'20060420',getdate()) as 'Dias de Vida do Pedro :)'
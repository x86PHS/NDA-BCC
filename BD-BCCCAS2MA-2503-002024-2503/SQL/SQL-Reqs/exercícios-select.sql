/* 
select * from authors
*/
-- 1
select au_lname, au_fname,city,state from authors where state <> 'CA'

-- 2
select * from authors where city like 's%'

/* 
select * from titles
*/

-- 3
select title,price,type from titles where (price >= 12) and (price <= 19)
select title,price,type from titles where price between 12 and 19

-- 4
select * from titles where (price * ytd_sales) < 10000

-- 5
select * from titles where title not like '%A%'

-- 6
select * from titles where len(title) < 20

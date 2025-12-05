- DCL - São controles da linguagem, por exemplo, dar permissões etc. Grant, Revoke, Deny são os tipos de permissão que fazemos com os usuários

- Select `<select list>` from `<table name>` (From é um tipo de cláusula) - Cláusulas são tipos de agregadores para os comandos. Ex: If (Em si ele funciona com tudo)

```sql
select <comandos>
```

- Ele em si faz qualquer coisa, entretanto, o from é um complemento que potencializa o select.

```sql
select '' < String
```

- Para especificarmos que é uma string, precisamos necessariamente 

### Funções de SQL

- Funções de manipulação de string
	- STRING
		- `len`
			- `SELECT TITLE, LEN(TITLE) FROM TITLES`
			- `SELECT TITLE, LEN(TITLE) FROM TITLES ORDER BY LEN(TITLE) ASC`
			- O Order by podemos ordenar pela tabela que queremos 1/2/3 etc. Ou asc e desc.
		- `SUBSTRINGRI'
			- Pega string e com dois argumentos tendo inicio e quantos caracteres, conseguimos pegar outra string.
		- `UPPER`
			- Fazemos com que os textos fiquem em caixa alta
	- MATH
		- `SQRT`
		- `POWER`
		- `CEILING`
		- `ROUND`
	- DATA
		- Getdate
			- Year()
			- Month()
			- Day()
		- DATEDIFF
	- AGREGAÇÃO
		- avg
		- sum
		- min
		- max
		- count(*)
		- ex: `select * from titles where price = (select max(price) from titles)`

- Formato Padrão: `YYYYMMDD`

```SQL
select avg(price) from titles where type = 'business'
select avg(price) from titles where type = 'psychology'

select type, avg(price) from titles group by type
select type, count(*) from titles group by type
select type, count(*) from titles group by type order by 2 desc

select country, count(*) from nbaplayer group by country
select country, count(*) from nbaplayer group by country order by count(*) desc
```

```sql
/*
1 - select max(peso) from Pokemon
2 - select count(*) from Tipo
3 - select count(*) from Pokemon where peso < 10
4 - select avg(altura) from Pokemon where codCategoria = 160
5 - select min(altura) from Pokemon
6 - select nome,altura,peso,peso/power(altura,2) as IMC from Pokemon order by 4 desc
7 - select codCategoria,avg(peso) as 'Media Peso' ,avg(altura) as 'Media Altura' from Pokemon group by codCategoria 
*/

```
-- 1 - Buscar o nome e ano dos filmes
select nome, ano from filmes

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select nome, ano from filmes order by ano

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
select nome, ano, duracao from filmes where Nome='de volta para o futuro'

-- 4 - Buscar os filmes lançados em 1997
select nome, ano, duracao from filmes where ano=1997

-- 5 - Buscar os filmes lançados APÓS o ano 2000
select nome, ano, duracao from filmes where ano>2000

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select nome, ano, duracao from filmes where duracao>100 and duracao<150 order by duracao

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
select ano, count(ano) as quantidade from filmes group by ano order by 2 desc

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
select primeironome, ultimonome from atores where genero='M'

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select primeironome, ultimonome from atores where genero='F' order by primeironome

-- 10 - Buscar o nome do filme e o gênero
select f.nome, g.genero from filmes f 
	inner join filmesgenero fg on f.Id=fg.IdFilme 
	inner join generos g on g.Id=fg.IdGenero

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
select f.nome, g.genero from filmes f 
	inner join filmesgenero fg on f.Id=fg.IdFilme 
	inner join generos g on g.Id=fg.IdGenero
where g.Genero='Mistério'

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel from elencofilme ef 
	inner join atores a on ef.IdAtor=a.Id 
	inner join filmes f on ef.IdFilme=f.Id
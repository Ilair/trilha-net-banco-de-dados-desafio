
-- 1 - Buscar o Nome e o Ano dos Filmes
Select 
	Nome,
	Ano 
From Filmes

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select * from Filmes 
order by Ano

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
Select 
	Nome, 
	Ano, 
	Duracao 
From Filmes
Where Nome = 'De Volta para o Futuro'

-- 4 - Buscar os filmes lançados em 1997
Select
	Nome,
	Ano,
	Duracao
From Filmes
Where Ano = 1997
	
-- 5 - Buscar os filmes lançados APÓS o ano 2000
Select
	Nome,
	Ano,
	Duracao
From Filmes
Where Ano > 2000

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
Select
	Nome,
	Ano,
	Duracao
From Filmes
Where Duracao > 100 and Duracao < 150
Order By Duracao

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
Select
	Ano,
	COUNT(*) as Quantidade
From Filmes
Group By Ano
Order By Quantidade desc

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
Select * from Atores
Where Genero = 'M'

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
Select * From Atores
Where Genero = 'F'
Order By PrimeiroNome

-- 10 - Buscar o nome do filme e o gênero
Select 
    f.Nome, 
    g.Genero
From Filmes f
inner join FilmesGenero fg on(fg.IdFilme = f.Id)
inner join Generos g on (g.Id = fg.IdGenero)

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
Select 
    f.Nome, 
    g.Genero
From Filmes f
Inner Join FilmesGenero fg on(fg.IdFilme = f.Id)
Inner Join Generos g on(g.Id = fg.IdGenero)
where g.Genero = 'Mistério'

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
Select 
    f.Nome, 
    a.PrimeiroNome, 
    a.UltimoNome, 
    e.Papel
From Filmes f
Inner Join ElencoFilme e on(e.IdFilme = f.Id)
Inner Join Atores a on(a.Id = e.IdAtor)

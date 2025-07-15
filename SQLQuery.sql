-- 1 - Buscar o nome e ano dos filmes
SELECT
nome,
Ano
FROM Filmes

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT
nome,
Ano, 
Duracao
FROM Filmes
ORDER BY Ano

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT
nome,
Ano, 
Duracao
FROM Filmes
WHERE nome = 'De Volta para o Futuro'

-- 4 - Buscar os filmes lançados em 1997
SELECT
nome,
Ano, 
Duracao
FROM Filmes
WHERE Ano = 1997

-- 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT
nome,
Ano, 
Duracao
FROM Filmes
WHERE Ano > 2000

-- 6 - Buscar os filmes com a duração maior que 100 e menor que 150, ordenando pela duração em ordem crescente
SELECT
nome,
Ano, 
Duracao
FROM Filmes
WHERE 
Duracao > 100
AND
Duracao < 150   
ORDER BY Duracao

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duração em ordem decrescente
SELECT
  Ano,
  COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT
PrimeiroNome,
UltimoNome, 
Genero
FROM Atores

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT
PrimeiroNome,
UltimoNome, 
Genero
FROM Atores
ORDER BY PrimeiroNome

-- 10 - Buscar o nome do filme e o gênero
SELECT
f.nome,
g.genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.id = fg.idFilme
INNER JOIN Generos g ON g.id = fg.idGenero

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT
f.nome,
g.genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.id = fg.idFilme
INNER JOIN Generos g ON g.id = fg.idGenero
WHERE g.genero = 'Mistério'

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT
f.nome,
a.PrimeiroNome,
a.UltimoNome,
e.Papel 
FROM Filmes f
INNER JOIN ElencoFilme e ON f.id = e.idFilme
INNER JOIN Atores a ON a.id = e.idAtor




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

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
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

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT
  Ano,
  COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome






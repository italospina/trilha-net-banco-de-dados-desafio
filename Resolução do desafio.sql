-- 1. Buscar o nome e ano dos filmes
SELECT nome, ano
FROM filmes;

-- 2. Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT nome, ano
FROM filmes
ORDER BY ano ASC;

-- 3. Buscar pelo filme "De Volta para o Futuro", trazendo o nome, ano e a dura��o
SELECT nome, ano, duracao
FROM filmes
WHERE nome = 'De Volta para o Futuro';

-- 4. Buscar os filmes lan�ados em 1997
SELECT nome, ano
FROM filmes
WHERE ano = 1997;

-- 5. Buscar os filmes lan�ados AP�S o ano 2000
SELECT nome, ano
FROM filmes
WHERE ano > 2000;

-- 6. Buscar os filmes com a dura��o maior que 100 e menor que 150, ordenando pela dura��o em ordem crescente
SELECT nome, duracao
FROM filmes
WHERE duracao > 100 AND duracao < 150
ORDER BY duracao ASC;

-- 7. Buscar a quantidade de filmes lan�ados no ano, agrupando por ano e ordenando pela quantidade em ordem decrescente
SELECT ano, COUNT(*) AS quantidade_filmes
FROM filmes
GROUP BY ano
ORDER BY quantidade_filmes DESC;

-- 8. Buscar os atores do g�nero masculino, retornando o PrimeiroNome e UltimoNome
SELECT primeironome, UltimoNome
FROM atores
WHERE genero = 'Masculino';

-- 9. Buscar os atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome e ordenando pelo PrimeiroNome
SELECT primeironome, UltimoNome
FROM atores
WHERE genero = 'Feminino'
ORDER BY primeironome ASC;

-- 10. Buscar o nome do filme e o g�nero
SELECT filmes.nome AS filme, generos.genero AS genero
FROM filmes
JOIN filmesgenero ON filmes.id = filmesgenero.idfilme
JOIN generos ON filmesgenero.idgenero = generos.id;

-- 11. Buscar o nome do filme e o g�nero do tipo "Mist�rio"
SELECT filmes.nome AS filme, generos.genero AS genero
FROM filmes
JOIN filmesgenero ON filmes.id = filmesgenero.idfilme
JOIN generos ON filmesgenero.idgenero = generos.id
WHERE generos.genero = 'Mist�rio';

-- 12. Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT filmes.nome AS filme, atores.primeironome, atores.UltimoNome, elencofilme.papel
FROM filmes
JOIN elencofilme ON filmes.id = elencofilme.idfilme
JOIN atores ON elencofilme.idator = atores.id;

SELECT filmes, papeis, idade
FROM ATORES
WHERE Ator eq 'Robert DeNiro' AND anoInicial > 1970
UNION 
SELECT avaliacao 
FROM FILME
ORDER BY avaliacao ASC

SELECT filmes, papeis, idade
FROM ATORES
WHERE Ator eq 'Al Pacino' AND anoFinal < 2005
UNION 
SELECT avaliacao 
FROM FILME
ORDER BY avaliacao DESC

SELECT filmes, codiretores, idade
FROM DIRETORES
WHERE Diretor eq 'Stanley Kubrick' AND anoFinal < 1990
UNION 
SELECT avaliacao 
FROM FILME
ORDER BY avaliacao ASC

SELECT filmes, codiretores, idade
FROM DIRETORES
WHERE Diretor eq 'Wim Wenders' AND anoInicial < 1980
UNION 
SELECT avaliacao 
FROM FILME
ORDER BY avaliacao DESC

SELECT filmes, codiretores, idade
FROM DIRETORES
WHERE Diretor eq 'Cristopher Nolan' AND genero eq 'Guerra'

SELECT elenco, genero, avaliacao, mediaaval, duracao, idioma, pais 
FROM FILME
WHERE NomeFilme eq 'O Iluminado'

SELECT elenco, genero, avaliacao, mediaaval, duracao, idioma, pais 
FROM FILME
WHERE NomeFilme eq 'Dunkirk'

SELECT Diretor
FROM DIRETORES LIMIT 10
UNION
SELECT NomeFilme, ano, avaliacao
FROM FILME 
WHERE genero eq 'Drama' AND anoInicial > 2000 LIMIT 10

SELECT Diretor
FROM DIRETORES LIMIT 10
UNION
SELECT NomeFilme, ano, avaliacao
FROM FILME 
WHERE genero eq 'Terror' AND anoFinal > 1995 LIMIT 10

SELECT Diretor
FROM DIRETORES LIMIT 5
UNION
SELECT Ator, AtuouEm, avaliacao
FROM FILME 
WHERE genero eq 'Suspense' AND anoFinal < 2010 LIMIT 5

SELECT Diretor
FROM DIRETORES LIMIT 5
UNION
SELECT Ator, AtuouEm, avaliacao
FROM FILME 
WHERE genero eq 'Comedia' AND anoInicial > 1990 LIMIT 5















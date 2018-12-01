SELECT filme.titulo AS 'Título',
	   elenco.papel AS 'Papel',
       atores.ano_nascimento AS 'Nascimento'
	FROM atores
	JOIN elenco ON elenco.atores_id_atores= atores.id_atores
	JOIN filme ON filme.id_filme = elenco.filme_id_filme
	JOIN avaliacao ON filme.id_filme = avaliacao.filme_id_filme
	JOIN genero_filme ON filme.genero_filme_fk = genero_filme.id_genero_filme
	WHERE atores.nome = 'Uma Thurman' 
	  AND filme.titulo ='Kill Bill: Volume 2'
	  AND genero_filme.nome = 'Ação'
	  HAVING MAX(avaliacao.resultado_normalizado)
	  OR MIN(avaliacao.resultado_normalizado);
  
SELECT filme.titulo AS 'Título',
	   diretor.nome AS 'Diretor',
       diretor.ano_nascimento 'NASCIMENTO'
	FROM diretor
	JOIN filme_has_diretor ON filme_has_diretor.diretor_id_diretor = diretor.id_diretor
	JOIN filme ON filme.id_filme = filme_has_diretor.filme_id_filme
	JOIN genero_filme ON genero_filme.id_genero_filme = filme.genero_filme_fk
    JOIN avaliacao ON avaliacao.filme_id_filme = filme.id_filme
	WHERE diretor.nome = 'Quentin Tarantino'
      AND filme.data_de_lancamento >='1999-10-10' AND filme.data_de_lancamento <= '1999-12-13'
	  AND genero_filme.nome = 'Ação'
	  HAVING MAX(avaliacao.resultado_normalizado)
	  OR MIN(avaliacao.resultado_normalizado);
  
SELECT * FROM filme;
SELECT * FROM genero_filme;


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
  
SELECT  atores.nome AS 'Elenco',
        elenco.papel AS 'Papel',
        genero_filme.nome AS 'Gênero',
        orgaos_imprensa.nome_orgao AS 'Órgão de imprensa',
        avaliacao.data_avaliacao AS 'Data da avaliação',
        avaliacao.resultado_original AS 'Avaliação original',
        avaliacao.resultado_normalizado AS 'Resultado normalizado',
        avaliadores.nome AS 'Avaliador',
        filme.duracao AS 'Duração',
        idioma.nome_idioma AS 'Idioma',
        pais.nome_pais AS 'País'
   FROM filme
   JOIN elenco on elenco.filme_id_filme = filme.id_filme
   JOIN atores on atores.id_atores = elenco.atores_id_atores
   JOIN genero_filme on genero_filme.id_genero_filme = filme.genero_filme_fk
   JOIN avaliacao on avaliacao.filme_id_filme = filme.id_filme
   JOIN avaliadores_has_orgaos_imprensa on avaliadores_has_orgaos_imprensa.id_orgaos_imprensa = avaliacao.id_orgaos_imprensa_avaliadores
   JOIN orgaos_imprensa on orgaos_imprensa.id_orgaos_imprensa = avaliadores_has_orgaos_imprensa.id_orgaos_imprensa
   JOIN avaliadores on avaliadores.id_avaliadores = avaliadores_has_orgaos_imprensa.id_avaliadores
   JOIN idioma on idioma.id_idioma = filme.idioma_fk 	
   JOIN pais on pais.id_pais = filme.pais_fk
   WHERE filme.titulo = 'Kill Bill: Volume 2';
   


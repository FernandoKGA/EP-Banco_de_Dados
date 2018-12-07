/*
  TRABALHO DE BANCO DE DADOS - ACH2004
  ALUNOS:
  - FERNANDO KARCHILOFF GOUVEIA DE AMORIM (10387644)
  - JOÃO GUILHERME DA COSTA SEIKI (9784634)
  - VICTOR GOMES DE OLIVEIRA MARTINS NICOLA (9844881)
  - GUILHERME AUGUSTO RIBEIRO NEVES (9037522) 
*/

#ATORES
SELECT filme.titulo AS 'Filme',
	   elenco.papel AS 'Papel',
       (SELECT YEAR(filme.data_de_lancamento) - atores.ano_nascimento) AS 'Idade'
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

# DIRETORES
SELECT filme.titulo AS 'Filme',
	   diretor.nome AS 'Diretor',
       (SELECT YEAR(filme.data_de_lancamento) - diretor.ano_nascimento) AS 'Idade'
	FROM diretor
	LEFT JOIN filme_has_diretor ON filme_has_diretor.diretor_id_diretor = diretor.id_diretor
	JOIN filme ON filme.id_filme = filme_has_diretor.filme_id_filme
	JOIN genero_filme ON genero_filme.id_genero_filme = filme.genero_filme_fk
    JOIN avaliacao ON avaliacao.filme_id_filme = filme.id_filme
	WHERE diretor.nome = 'Quentin Tarantino'
     /* AND filme.data_de_lancamento >='1999-10-10' AND filme.data_de_lancamento <= '1999-12-13'
	  AND genero_filme.nome = 'Ação'
	  HAVING MAX(avaliacao.resultado_normalizado) 
	  OR MIN(avaliacao.resultado_normalizado)*/;
      
      
# DIRETORES
SELECT filme.titulo AS 'Filme',
	   diretor.nome AS 'Diretor',
       (SELECT YEAR(filme.data_de_lancamento) - diretor.ano_nascimento) AS 'Idade'
	FROM filme
	JOIN filme_has_diretor ON filme_has_diretor.filme_id_filme = filme.id_filme
    JOIN diretor ON diretor.id_diretor = filme_has_diretor.diretor_id_diretor
	JOIN genero_filme ON genero_filme.id_genero_filme = filme.genero_filme_fk
    JOIN avaliacao ON avaliacao.filme_id_filme = filme.id_filme
	WHERE diretor.nome <> 'Steven Spielberg'
			AND filme_has_diretor.filme_id_filme IN (SELECT filme.id_filme 
														FROM diretor 
														JOIN filme_has_diretor ON filme_has_diretor.diretor_id_diretor = diretor.id_diretor
														JOIN filme ON filme.id_filme = filme_has_diretor.filme_id_filme
                                                        WHERE diretor.nome = 'Steven Spielberg')
			AND avaliacao.resultado_normalizado = 
				(SELECT MAX(resultado_normalizado) /*Altere de MIN para MAX de acordo com o filtro desejado*/
					FROM avaliacao
					JOIN filme ON filme.id_filme = avaliacao.filme_id_filme
					JOIN genero_filme on genero_filme.id_genero_filme = filme.genero_filme_fk
					WHERE filme.data_de_lancamento >='1999-10-10' AND filme.data_de_lancamento <= '2018-12-13' /*Altere aqui para filtrar por data*/
						AND  genero_filme.nome = 'Ação')													   /*Altere aqui para filtrar por gênero*/
			AND filme.data_de_lancamento >='1999-10-10' AND filme.data_de_lancamento <= '2018-12-13' 			   /*A data aqui deve ser igual a data do filtro*/
			AND  genero_filme.nome = 'Ação';
      
drop database ep_banco_de_dados;
# FILME
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

# LISTA DE FILMES
SELECT filme.titulo AS 'Filme',
       diretor.nome AS 'Diretores',
       filme.data_de_lancamento AS 'Data de lançamento',
       avaliacao.resultado_normalizado AS 'Avaliação normalizada'
    FROM filme
    JOIN filme_has_diretor on filme_has_diretor.filme_id_filme = filme.id_filme
    JOIN diretor on diretor.id_diretor = filme_has_diretor.diretor_id_diretor
    JOIN genero_filme on genero_filme.id_genero_filme = filme.genero_filme_fk
    JOIN avaliacao on avaliacao.filme_id_filme = filme.id_filme
	WHERE avaliacao.resultado_normalizado = 
				(SELECT MAX(resultado_normalizado) /*Altere de MIN para MAX de acordo com o filtro desejado*/
					FROM avaliacao
					JOIN filme ON filme.id_filme = avaliacao.filme_id_filme
					JOIN genero_filme on genero_filme.id_genero_filme = filme.genero_filme_fk
					WHERE filme.data_de_lancamento >='1999-10-10' AND filme.data_de_lancamento <= '2018-12-13' /*Altere aqui para filtrar por data*/
						AND  genero_filme.nome = 'Animação')													   /*Altere aqui para filtrar por gênero*/
		AND filme.data_de_lancamento >='1999-10-10' AND filme.data_de_lancamento <= '2018-12-13' 			   /*A data aqui deve ser igual a data do filtro*/
		AND  genero_filme.nome = 'Animação'																	   /*O gênero aqui deve ser igual ao gênero do filtro**/
	LIMIT 50;    /*O DADO se encontra no LIMIT*/
       

# LISTA DE ATORES
SELECT atores.nome AS 'Ator',
	   filme.titulo AS 'Filme',
       diretor.nome AS 'Diretor',
       filme.data_de_lancamento AS 'Data',
       avaliacao.resultado_normalizado AS 'Avaliação normalizada'
       FROM atores
       JOIN elenco on elenco.atores_id_atores = atores.id_atores
       JOIN filme on filme.id_filme = elenco.filme_id_filme
       JOIN filme_has_diretor on filme_has_diretor.filme_id_filme = filme.id_filme
       JOIN diretor on diretor.id_diretor = filme_has_diretor.diretor_id_diretor
       JOIN genero_filme on genero_filme.id_genero_filme = filme.genero_filme_fk
       JOIN avaliacao on avaliacao.filme_id_filme = filme.id_filme
       WHERE avaliacao.resultado_normalizado = 
					(SELECT MAX(resultado_normalizado) /*Altere de MIN para MAX de acordo com o filtro desejado*/
						FROM avaliacao
						JOIN filme ON filme.id_filme = avaliacao.filme_id_filme
                        JOIN genero_filme on genero_filme.id_genero_filme = filme.genero_filme_fk
                        WHERE filme.data_de_lancamento >='1999-10-10' AND filme.data_de_lancamento <= '2018-12-13' /*Altere aqui para filtrar por data*/
							AND  genero_filme.nome = 'Ação')													   /*Altere aqui para filtrar por gênero*/
			AND  filme.data_de_lancamento >='1999-10-10' AND filme.data_de_lancamento <= '2018-12-13' 			   /*A data aqui deve ser igual a data do filtro*/
			AND  genero_filme.nome = 'Ação'																		/*O gênero aqui deve ser igual ao gênero do filtro**/  

            LIMIT 4;    /*O DADO se encontra no LIMIT*/

	/* OR MIN(avaliacao.resultado_normalizado)*/
#TESTEEEEEEEEEEEEEEEE


#ATORES
SELECT filme.titulo AS 'Filme',
	   elenco.papel AS 'Papel',
       (SELECT YEAR(filme.data_de_lancamento) - atores.ano_nascimento) AS 'Idade'
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


SELECT atores.nome AS 'Ator',
	   filme.titulo AS 'Título',
       diretor.nome AS 'Diretor',
       filme.data_de_lancamento AS 'Data',
       avaliacao.resultado_normalizado AS 'Avaliação normalizada'
       FROM atores
       JOIN elenco on elenco.atores_id_atores = atores.id_atores
       JOIN filme on filme.id_filme = elenco.filme_id_filme
       JOIN filme_has_diretor on filme_has_diretor.filme_id_filme = filme.id_filme
       JOIN diretor on diretor.id_diretor = filme_has_diretor.filme_id_filme
       JOIN genero_filme on genero_filme.id_genero_filme = filme.genero_filme_fk
       JOIN avaliacao on avaliacao.filme_id_filme = filme.id_filme
       /*WHERE genero_filme.nome = 'Ação'
	   AND filme.data_de_lancamento >='1999-10-10' AND filme.data_de_lancamento <= '1999-12-13'
	   HAVING MAX(avaliacao.resultado_normalizado)
	   OR MIN(avaliacao.resultado_normalizado)
       LIMIT 5*/;
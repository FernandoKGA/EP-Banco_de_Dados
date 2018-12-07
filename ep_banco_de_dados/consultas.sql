/****************************************************************************************************************************************************************
  TRABALHO DE BANCO DE DADOS - ACH2004
  ALUNOS:
  - FERNANDO K. G. AMORIM 	10387644
  - JOÃO G. C. SEIKI 		9784634
  - VICTOR G. O. M. NICOLA 	9844881
  - GUILHERME A. R. NEVES 	9037522
****************************************************************************************************************************************************************/

/****************************************************************************************************************************************************************/
/* Comando que exibe filmes, nomes de papel desempenhado, idades (quando atuou no filme) de um ator/atriz

Modifique a variavel @ator com um nome valido de ator/atriz

Modifique as variaveis de filtro com valores desejados, desde que sejam válidos
*/
/*Dado*/
SET @ator = 'Uma Thurman';
/*Filtros*/
SET @anoInicial = '2003';
SET @anoFinal = '2005';
SET @genero = 'Ação';
SET @avaliacaoMinima = 8;
SET @avaliacaoMaxima = 10;
/*************************************/

#ATORES
SELECT filme.titulo AS 'Filme',
	   elenco.papel AS 'Papel',
       (SELECT YEAR(filme.data_de_lancamento) - atores.ano_nascimento) AS 'Idade'
	FROM atores
	JOIN elenco ON elenco.atores_id_atores= atores.id_atores
	JOIN filme ON filme.id_filme = elenco.filme_id_filme
	JOIN avaliacao ON avaliacao.filme_id_filme = filme.id_filme
	JOIN genero_filme ON filme.genero_filme_fk = genero_filme.id_genero_filme
	WHERE atores.nome = @ator
	  AND filme.data_de_lancamento >= concat(@anoInicial, '-01-01') AND filme.data_de_lancamento <= concat(@anoFinal, '-12-31')
	  AND genero_filme.nome = @genero 
      AND avaliacao.resultado_normalizado >= @avaliacaoMinima AND avaliacao.resultado_normalizado <= @avaliacaoMaxima
      GROUP BY 1; 		
      
      
      
/****************************************************************************************************************************************************************/
/* Comando que exibe filmes, Codiretores, se houver e idades (quando atuou no filme) de um ator/atriz

Modifique a variavel @diretor com um nome valido de diretor/diretora

Modifique as variaveis de filtro com valores desejados, desde que sejam válidos
*/
/****OBS.: DA FORMA COMO INTERPRETAMOS O PROBLEMA, CASO O FILME NAO TENHA CODIRETORES, NADA SERA EXIBIDO. ESTE COMANDO NAO EXIBE DIRETORES!!!****/
/*Dado*/
SET @diretor = 'Quentin Tarantino';
/*Filtros*/
SET @anoInicial = '2000';
SET @anoFinal = '2018';
SET @genero = 'Ação';
SET @avaliacaoMinima = 1;
SET @avaliacaoMaxima = 10;
/*************************************/

# DIRETORES
SELECT filme.titulo AS 'Filme',
	   diretor.nome AS 'Diretor',
       (SELECT YEAR(filme.data_de_lancamento) - diretor.ano_nascimento) AS 'Idade'
	FROM filme
	JOIN filme_has_diretor ON filme_has_diretor.filme_id_filme = filme.id_filme
    JOIN diretor ON diretor.id_diretor = filme_has_diretor.diretor_id_diretor
	JOIN genero_filme ON genero_filme.id_genero_filme = filme.genero_filme_fk
    JOIN avaliacao ON avaliacao.filme_id_filme = filme.id_filme
	WHERE diretor.nome <> @diretor									/*CASO QUEIRA EXIBIR O DIRETOR TAMBEM, BASTA REMOVER ESSA CONDIÇÃO*/
			AND filme_has_diretor.filme_id_filme IN (SELECT filme.id_filme 
														FROM diretor 
														JOIN filme_has_diretor ON filme_has_diretor.diretor_id_diretor = diretor.id_diretor
														JOIN filme ON filme.id_filme = filme_has_diretor.filme_id_filme
                                                        WHERE diretor.nome = @diretor)
			AND filme.data_de_lancamento >= concat(@anoInicial, '-01-01') AND filme.data_de_lancamento <= concat(@anoFinal, '-12-31')
			AND genero_filme.nome = @genero 
			AND avaliacao.resultado_normalizado >= @avaliacaoMinima AND avaliacao.resultado_normalizado <= @avaliacaoMaxima
            GROUP BY 1, 2;
      
      
/****************************************************************************************************************************************************************/      
/* Comando que exibe elenco (nomes dos atores e nomes do papel), gênero, avaliações(nome do órgão de imprensa, 
data da avaliação, avaliação original, avaliação normalizada e nome do avaliador), média das avaliaçõesnormalizadas, 
duração, idioma e país do filme desejado

Modifique a variavel @titulo com um nome valido de filme

Este comando não possui filtros.
*/
/*Dado*/
SET @titulo = 'Kung-Fusão';
/*************************************/
    
# FILME
SELECT  atores.nome AS 'Elenco',
        elenco.papel AS 'Papel',
        genero_filme.nome AS 'Gênero',
        orgaos_imprensa.nome_orgao AS 'Órgão de imprensa',
        avaliacao.data_avaliacao AS 'Data da avaliação',
        avaliacao.resultado_original AS 'Avaliação original',
        avaliacao.resultado_normalizado AS 'Resultado normalizado',
        avaliadores.nome AS 'Avaliador',
        (
        SELECT AVG(avaliacao.resultado_normalizado) 
        FROM avaliacao WHERE avaliacao.filme_id_filme = filme.id_filme
        ) AS 'Média Normalizada',
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
    WHERE filme.titulo = @titulo;

/****************************************************************************************************************************************************************/
/* Comando que exibe título do filme, diretor(es), ano, avaliação normalizada dos filmes selecionados

NO MySQL n eh possivel (pelo menos em nossa versao) utilizar uma variavel declarada com a funcao LIMIT, por isso para limitar, eh necessario alterar o valor diretamente no WHERE

Modifique as variaveis de filtro com valores desejados, desde que sejam válidos
*/

/*Dado*/
/*SET @numeroDeFilmes = 1;  /*NAO PODE SER ALTERADO AQUI, VA PARA A CLAUSULA WHERE*/
/*Filtros*/
SET @genero = 'Drama';
SET @anoInferior = '2000';
SET @anoSuperior = '2018';
SET @avaliacaoMinima = 1;
SET @avaliacaoMaxima = 10;
/*************************************/

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
	WHERE filme.data_de_lancamento >= concat(@anoInferior, '-01-01') AND filme.data_de_lancamento <= concat(@anoSuperior, '-12-31')
		AND genero_filme.nome = @genero 
		AND avaliacao.resultado_normalizado >= @avaliacaoMinima AND avaliacao.resultado_normalizado <= @avaliacaoMaxima
        GROUP BY 1			/*Caso queira exibir as diferentes notas de cada filme, comente essa linha*/
        LIMIT 50; 			/*PARA DEFINIR O LIMITE DE DADOS EXIBIDOS, ALTERE O NUMERO AQUI*/

/****************************************************************************************************************************************************************/
/* Comando que exibe a lista de atores contendo nome do ator, título do filme, diretor(es), ano, avaliação
normalizada.

Assim como no comando anterior, como no MySQL n eh possivel (pelo menos em nossa versao) utilizar uma variavel declarada com a funcao LIMIT, 
eh necessario alterar o valor diretamente no WHERE

Modifique as variaveis de filtro com valores desejados, desde que sejam válidos
*/
/*Dado*/
/*SET @numeroDeFilmes = 1;  /*NAO PODE SER ALTERADO AQUI, VA PARA A CLAUSULA WHERE*/
/*Filtros*/
SET @genero = 'Drama';
SET @anoInferior = '1995';
SET @anoSuperior = '2018';
SET @avaliacaoMinima = 1;
SET @avaliacaoMaxima = 10;	
/*************************************/
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
       WHERE filme.data_de_lancamento >= concat(@anoInferior, '-01-01') AND filme.data_de_lancamento <= concat(@anoSuperior, '-12-31')
		AND genero_filme.nome = @genero 
		AND avaliacao.resultado_normalizado >= @avaliacaoMinima AND avaliacao.resultado_normalizado <= @avaliacaoMaxima
        GROUP BY 1,2			/*Caso queira exibir as diferentes notas de cada filme, comente essa linha*/
        LIMIT 50; 			/*PARA DEFINIR O LIMITE DE DADOS EXIBIDOS, ALTERE O NUMERO AQUI*/



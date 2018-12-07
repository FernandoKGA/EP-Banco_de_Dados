############################################################
#Insercao de idiomas
INSERT INTO idioma(nome_idioma) VALUES ('Português-Brasil');
INSERT INTO idioma(nome_idioma) VALUES ('Inglês');
INSERT INTO idioma(nome_idioma) VALUES ('Alemão');
INSERT INTO idioma(nome_idioma) VALUES ('Francês');
INSERT INTO idioma(nome_idioma) VALUES ('Espanhol');
INSERT INTO idioma(nome_idioma) VALUES ('Mandarim');
INSERT INTO idioma(nome_idioma) VALUES ('Português-Portugal');
INSERT INTO idioma(nome_idioma) VALUES ('Japonês');
INSERT INTO idioma(nome_idioma) VALUES ('Russo');
INSERT INTO idioma(nome_idioma) VALUES ('Polonês');

############################################################
#Insercao de generos
INSERT INTO genero_filme(nome) VALUES ('Drama');
INSERT INTO genero_filme(nome) VALUES ('Comédia');
INSERT INTO genero_filme(nome) VALUES ('Romance');
INSERT INTO genero_filme(nome) VALUES ('Aventura');
INSERT INTO genero_filme(nome) VALUES ('Ação');
INSERT INTO genero_filme(nome) VALUES ('Ficção');
INSERT INTO genero_filme(nome) VALUES ('Ficção-Científica');
INSERT INTO genero_filme(nome) VALUES ('Policial');
INSERT INTO genero_filme(nome) VALUES ('Terror');
INSERT INTO genero_filme(nome) VALUES ('Suspense');
INSERT INTO genero_filme(nome) VALUES ('Animação');

#####################################################
#Insercao de paises
INSERT INTO pais(nome_pais) VALUES ('USA');
INSERT INTO pais(nome_pais) VALUES ('BR');
INSERT INTO pais(nome_pais) VALUES ('PT');
INSERT INTO pais(nome_pais) VALUES ('CH');
INSERT INTO pais(nome_pais) VALUES ('RS');
INSERT INTO pais(nome_pais) VALUES ('JP');
INSERT INTO pais(nome_pais) VALUES ('ESP');
INSERT INTO pais(nome_pais) VALUES ('POL');
INSERT INTO pais(nome_pais) VALUES ('GER');
INSERT INTO pais(nome_pais) VALUES ('UK');
INSERT INTO pais(nome_pais) VALUES ('FR');

######################################################
#Insercao de diretores

#https://pt.wikipedia.org/wiki/Steven_Spielberg
INSERT INTO diretor(nome,ano_nascimento,genero) VALUES ('Steven Spielberg', '1946','MASC');
#https://pt.wikipedia.org/wiki/Quentin_Tarantino
INSERT INTO diretor(nome,ano_nascimento,genero) VALUES ('Quentin Tarantino', '1963','MASC');
#https://pt.wikipedia.org/wiki/Francis_Ford_Coppola
INSERT INTO diretor(nome,ano_nascimento,genero) VALUES ('Francis Ford Coppola', '1939','MASC');
#https://pt.wikipedia.org/wiki/Tim_Burton
INSERT INTO diretor(nome,ano_nascimento,genero) VALUES ('Tim Burton', '1958','MASC');
#https://pt.wikipedia.org/wiki/James_Cameron
INSERT INTO diretor(nome,ano_nascimento,genero) VALUES ('James Cameron', '1954','MASC');
#https://pt.wikipedia.org/wiki/Sofia_Coppola
INSERT INTO diretor(nome,ano_nascimento,genero) VALUES ('Sofia Coppola', '1971','FEM');
#https://pt.wikipedia.org/wiki/Woody_Allen
INSERT INTO diretor(nome,ano_nascimento,genero) VALUES ('Woody Allen', '1935','MASC');
#https://pt.wikipedia.org/wiki/Oliver_Stone
INSERT INTO diretor(nome,ano_nascimento,genero) VALUES ('Oliver Stone','1946','MASC');
#https://pt.wikipedia.org/wiki/Jos%C3%A9_Padilha
INSERT INTO Diretor(nome,ano_nascimento,genero) VALUES ('José Padilha','1967','MASC');
#https://pt.wikipedia.org/wiki/Darren_Aronofsky
INSERT INTO Diretor(nome,ano_nascimento,genero) VALUES ('Darren Aronofsky','1969','MASC');
#https://www.imdb.com/name/nm2210720/?ref_=tt_ov_dr
INSERT INTO Diretor(nome,ano_nascimento,genero) VALUES ('Naoko Yamada','1984','FEM');
#https://pt.wikipedia.org/wiki/Frank_Darabont
INSERT INTO Diretor(nome,ano_nascimento,genero) VALUES ('Frank Darabont','1959','MASC');
#https://pt.wikipedia.org/wiki/Stephen_Chow
INSERT INTO Diretor(nome,ano_nascimento,genero) VALUES ('Stephen Chow','1962','MASC');

#############################################################
#Insercao de atores

#https://pt.wikipedia.org/wiki/Brad_Pitt
INSERT INTO atores(nome,ano_nascimento,genero) VALUES ('Brad Pitt','1963','MASC');
#https://pt.wikipedia.org/wiki/Daniel_Br%C3%BChl
INSERT INTO atores(nome,ano_nascimento,genero) VALUES ('Daniel Bruhl','1978','MASC');
#https://pt.wikipedia.org/wiki/M%C3%A9lanie_Laurent
INSERT INTO atores(nome,ano_nascimento,genero) VALUES ('Mélanie Laurent','1983','FEM');

#https://pt.wikipedia.org/wiki/Daniel_Day-Lewis
INSERT INTO atores(nome,ano_nascimento,genero) VALUES ('Daniel Day-Lewis','1957','MASC');
#https://pt.wikipedia.org/wiki/Joseph_Gordon-Levitt
INSERT INTO atores(nome,ano_nascimento,genero) VALUES ('Joseph Gordon-Levitt','1981','MASC');

#https://pt.wikipedia.org/wiki/Wagner_Moura
INSERT INTO atores(nome,ano_nascimento,genero) VALUES ('Wagner Moura','1976','MASC');
#https://pt.wikipedia.org/wiki/Maria_Ribeiro
INSERT INTO atores(nome,ano_nascimento,genero) VALUES ('Maria Ribeiro','1975','FEM');

#https://pt.wikipedia.org/wiki/Ellen_Burstyn
INSERT INTO atores(nome,ano_nascimento,genero) VALUES ('Ellen Burstyn','1932','FEM');
#https://pt.wikipedia.org/wiki/Jared_Leto
INSERT INTO atores(nome,ano_nascimento,genero) VALUES ('Jared Leto','1971','MASC');

#https://pt.wikipedia.org/wiki/Miyu_Irino
INSERT INTO atores(nome,ano_nascimento,genero) VALUES ('Miyu Irino','1988','MASC');
#https://pt.wikipedia.org/wiki/Saori_Hayami
INSERT INTO atores(nome,ano_nascimento,genero) VALUES ('Saori Hayami','1991','FEM');

#https://pt.wikipedia.org/wiki/Tom_Hanks
INSERT INTO atores(nome,ano_nascimento,genero) VALUES ('Tom Hanks','1956','MASC');
#https://pt.wikipedia.org/wiki/Michael_Clarke_Duncan
INSERT INTO atores(nome,ano_nascimento,genero) VALUES ('Michael Clarke Duncan','1957','MASC');

#https://pt.wikipedia.org/wiki/Uma_Thurman
INSERT INTO atores(nome,ano_nascimento,genero) VALUES ('Uma Thurman','1970','FEM');
#https://pt.wikipedia.org/wiki/David_Carradine
INSERT INTO atores(nome,ano_nascimento,genero) VALUES ('David Carradine','1936','MASC');

#https://pt.wikipedia.org/wiki/Stephen_Chow
INSERT INTO atores(nome,ano_nascimento,genero) VALUES ('Stephen Chow','1962','MASC');

########################################################
#Insercao de orgaos de imprensa

INSERT INTO orgaos_imprensa(nome_orgao) VALUES ('IMDB');
INSERT INTO orgaos_imprensa(nome_orgao) VALUES ('Rotten Tomatoes');
INSERT INTO orgaos_imprensa(nome_orgao) VALUES ('Metacritic');

########################################################
#Insercao de metodos de avaliacao de orgaos de imprensa
#Tipos de avaliacao ENUM('ESTRELAS', 'QUALITATIVO', 'NOTA', 'PORCENTAGEM')
#Para achar o orgao, use: 
#	(SELECT id_orgaos_imprensa FROM orgaos_imprensa 
#	WHERE nome_orgao = 'nome_do_orgao')
# Veja o exemplo de filmes/elenco/diretores
INSERT INTO formas_de_avaliacao(id_orgaos_imprensa,tipo_de_avaliacao) VALUES('1','Estrelas');
INSERT INTO formas_de_avaliacao(id_orgaos_imprensa,tipo_de_avaliacao) VALUES('2','Porcentagem');
INSERT INTO formas_de_avaliacao(id_orgaos_imprensa,tipo_de_avaliacao) VALUES('3','Nota');

########################################################
#Insercao de avaliadores
INSERT INTO avaliadores(nome) VALUES ('Todd McCarthy');
INSERT INTO avaliadores(nome) VALUES ('Jonathan Rosenbaum');
INSERT INTO avaliadores(nome) VALUES ('Peter Rainer');
INSERT INTO avaliadores(nome) VALUES ('Andrew Sarris');
INSERT INTO avaliadores(nome) VALUES ('Rick Groen');
INSERT INTO avaliadores(nome) VALUES ("Geoffrey O' Brien");
                                      
########################################################
#Insercao de avaliadores e orgaos de imprensa

INSERT INTO avaliadores_has_orgaos_imprensa(id_avaliadores,id_orgaos_imprensa) VALUES (
(SELECT id_avaliadores FROM avaliadores WHERE nome = 'Todd McCarthy'),
(SELECT id_orgaos_imprensa FROM orgaos_imprensa WHERE nome_orgao = 'IMDB')
);

INSERT INTO avaliadores_has_orgaos_imprensa(id_avaliadores,id_orgaos_imprensa) VALUES (
(SELECT id_avaliadores FROM avaliadores WHERE nome = 'Jonathan Rosenbaum'),
(SELECT id_orgaos_imprensa FROM orgaos_imprensa WHERE nome_orgao = 'IMDB')
);

INSERT INTO avaliadores_has_orgaos_imprensa(id_avaliadores,id_orgaos_imprensa) VALUES (
(SELECT id_avaliadores FROM avaliadores WHERE nome = 'Todd McCarthy'),
(SELECT id_orgaos_imprensa FROM orgaos_imprensa WHERE nome_orgao = 'Metacritic')
);

INSERT INTO avaliadores_has_orgaos_imprensa(id_avaliadores,id_orgaos_imprensa) VALUES (
(SELECT id_avaliadores FROM avaliadores WHERE nome = 'Peter Rainer'),
(SELECT id_orgaos_imprensa FROM orgaos_imprensa WHERE nome_orgao = 'Rotten Tomatoes')
);   

#(SELECT id_avaliadores FROM avaliadores WHERE nome = 'Peter Rainer');
#(SELECT id_orgaos_imprensa FROM orgaos_imprensa WHERE nome_orgao = 'Rotten Tomatoes');
#(SELECT id_avaliadores FROM avaliadores WHERE nome = 'Rick Groen');
#(SELECT id_orgaos_imprensa FROM orgaos_imprensa WHERE nome_orgao = 'Metacritic');                                      
                                      

########################################################
#Insercao de filmes     -- Para insercao de horas de filme, use minutos vezes 60

#https://pt.wikipedia.org/wiki/Inglourious_Basterds
INSERT INTO filme(titulo,duracao,data_de_lancamento,genero_filme_fk,idioma_fk,pais_fk) VALUES ('Bastardos Inglórios',SEC_TO_TIME(153*60),'2009-05-20',
(SELECT id_genero_filme FROM genero_filme WHERE nome = 'Ação'),
(SELECT id_idioma FROM idioma WHERE nome_idioma = 'Inglês'),
(SELECT id_pais FROM pais WHERE nome_pais = 'USA')
);

#https://pt.wikipedia.org/wiki/Lincoln_(filme)
INSERT INTO filme(titulo,duracao,data_de_lancamento,genero_filme_fk,idioma_fk,pais_fk) VALUES ('Lincoln',SEC_TO_TIME(150*60),'2012-10-08',
(SELECT id_genero_filme FROM genero_filme WHERE nome = 'Drama'),
(SELECT id_idioma FROM idioma WHERE nome_idioma = 'Inglês'),
(SELECT id_pais FROM pais WHERE nome_pais = 'USA')
);

#https://pt.wikipedia.org/wiki/Snowden_(filme)
INSERT INTO filme(titulo,duracao,data_de_lancamento,genero_filme_fk,idioma_fk,pais_fk) VALUES ('Snowden',SEC_TO_TIME(134*60),'2016-09-09',
(SELECT id_genero_filme FROM genero_filme WHERE nome = 'Drama'),
(SELECT id_idioma FROM idioma WHERE nome_idioma = 'Inglês'),
(SELECT id_pais FROM pais WHERE nome_pais = 'USA')
);

#https://pt.wikipedia.org/wiki/Tropa_de_Elite_(2007)
INSERT INTO filme(titulo,duracao,data_de_lancamento,genero_filme_fk,idioma_fk,pais_fk) VALUES ('Tropa de Elite',SEC_TO_TIME(118*60),'2007-10-12',
(SELECT id_genero_filme FROM genero_filme WHERE nome = 'Policial'),
(SELECT id_idioma FROM idioma WHERE nome_idioma = 'Português-Brasil'),
(SELECT id_pais FROM pais WHERE nome_pais = 'BR')
);

#https://pt.wikipedia.org/wiki/Requiem_for_a_Dream
INSERT INTO filme(titulo,duracao,data_de_lancamento,genero_filme_fk,idioma_fk,pais_fk) VALUES ('Réquiem para um Sonho',SEC_TO_TIME(102*60),'2000-05-14',
(SELECT id_genero_filme FROM genero_filme WHERE nome = 'Drama'),
(SELECT id_idioma FROM idioma WHERE nome_idioma = 'Inglês'),
(SELECT id_pais FROM pais WHERE nome_pais = 'FR')
);

#https://pt.wikipedia.org/wiki/Koe_no_Katachi_(filme)
INSERT INTO filme(titulo,duracao,data_de_lancamento,genero_filme_fk,idioma_fk,pais_fk) VALUES ('Koe no Katachi',SEC_TO_TIME(130*60),'2016-09-17',
(SELECT id_genero_filme FROM genero_filme WHERE nome = 'Animação'),
(SELECT id_idioma FROM idioma WHERE nome_idioma = 'Japonês'),
(SELECT id_pais FROM pais WHERE nome_pais = 'JP')
);

#https://pt.wikipedia.org/wiki/%C3%80_Espera_de_um_Milagre
INSERT INTO filme(titulo,duracao,data_de_lancamento,genero_filme_fk,idioma_fk,pais_fk) VALUES ('À Espera de um Milagre',SEC_TO_TIME(189*60),'1999-12-10',
(SELECT id_genero_filme FROM genero_filme WHERE nome = 'Drama'),
(SELECT id_idioma FROM idioma WHERE nome_idioma = 'Inglês'),
(SELECT id_pais FROM pais WHERE nome_pais = 'USA')
);

#https://pt.wikipedia.org/wiki/Kill_Bill
INSERT INTO filme(titulo,duracao,data_de_lancamento,genero_filme_fk,idioma_fk,pais_fk) VALUES ('Kill Bill: Volume 1',SEC_TO_TIME(111*60),'2003-10-24',
(SELECT id_genero_filme FROM genero_filme WHERE nome = 'Ação'),
(SELECT id_idioma FROM idioma WHERE nome_idioma = 'Inglês'),
(SELECT id_pais FROM pais WHERE nome_pais = 'USA')
);

#https://pt.wikipedia.org/wiki/Kill_Bill
INSERT INTO filme(titulo,duracao,data_de_lancamento,genero_filme_fk,idioma_fk,pais_fk) VALUES ('Kill Bill: Volume 2',SEC_TO_TIME(136*60),'2004-04-16',
(SELECT id_genero_filme FROM genero_filme WHERE nome = 'Ação'),
(SELECT id_idioma FROM idioma WHERE nome_idioma = 'Inglês'),
(SELECT id_pais FROM pais WHERE nome_pais = 'USA')
);

#https://pt.wikipedia.org/wiki/Kung_Fu_Hustle
INSERT INTO filme(titulo,duracao,data_de_lancamento,genero_filme_fk,idioma_fk,pais_fk) VALUES ('Kung-Fusão',SEC_TO_TIME(95*60),'2004-09-14',
(SELECT id_genero_filme FROM genero_filme WHERE nome = 'Comédia'),
(SELECT id_idioma FROM idioma WHERE nome_idioma = 'Mandarim'),
(SELECT id_pais FROM pais WHERE nome_pais = 'CH')
);

########################################################
#Insercao de relacao entre filmes e diretores

INSERT INTO filme_has_diretor(filme_id_filme,diretor_id_diretor) VALUES (
(SELECT id_filme FROM filme WHERE titulo = 'Lincoln'),
(SELECT id_diretor FROM diretor WHERE nome = 'Steven Spielberg')
);

INSERT INTO filme_has_diretor(filme_id_filme,diretor_id_diretor) VALUES (
(SELECT id_filme FROM filme WHERE titulo = 'Bastardos Inglórios'),
(SELECT id_diretor FROM diretor WHERE nome = 'Quentin Tarantino')
);

INSERT INTO filme_has_diretor(filme_id_filme,diretor_id_diretor) VALUES (
(SELECT id_filme FROM filme WHERE titulo = 'Bastardos Inglórios'),
(SELECT id_diretor FROM diretor WHERE nome = 'Francis Ford Coppola')
);

INSERT INTO filme_has_diretor(filme_id_filme,diretor_id_diretor) VALUES (
(SELECT id_filme FROM filme WHERE titulo = 'Bastardos Inglórios'),
(SELECT id_diretor FROM diretor WHERE nome = 'Steven Spielberg')
);

INSERT INTO filme_has_diretor(filme_id_filme,diretor_id_diretor) VALUES (
(SELECT id_filme FROM filme WHERE titulo = 'Snowden'),
(SELECT id_diretor FROM diretor WHERE nome = 'Oliver Stone')
);

INSERT INTO filme_has_diretor(filme_id_filme,diretor_id_diretor) VALUES (
(SELECT id_filme FROM filme WHERE titulo = 'Tropa de Elite'),
(SELECT id_diretor FROM diretor WHERE nome = 'José Padilha')
);

INSERT INTO filme_has_diretor(filme_id_filme,diretor_id_diretor) VALUES (
(SELECT id_filme FROM filme WHERE titulo = 'Tropa de Elite'),
(SELECT id_diretor FROM diretor WHERE nome = 'Quentin Tarantino')
);

INSERT INTO filme_has_diretor(filme_id_filme,diretor_id_diretor) VALUES (
(SELECT id_filme FROM filme WHERE titulo = 'Réquiem para um Sonho'),
(SELECT id_diretor FROM diretor WHERE nome = 'Darren Aronofsky')
);

INSERT INTO filme_has_diretor(filme_id_filme,diretor_id_diretor) VALUES (
(SELECT id_filme FROM filme WHERE titulo = 'Koe no Katachi'),
(SELECT id_diretor FROM diretor WHERE nome = 'Naoko Yamada')
);

INSERT INTO filme_has_diretor(filme_id_filme,diretor_id_diretor) VALUES (
(SELECT id_filme FROM filme WHERE titulo = 'À Espera de um Milagre'),
(SELECT id_diretor FROM diretor WHERE nome = 'Frank Darabont')
);

INSERT INTO filme_has_diretor(filme_id_filme,diretor_id_diretor) VALUES (
(SELECT id_filme FROM filme WHERE titulo = 'Kill Bill: Volume 1'),
(SELECT id_diretor FROM diretor WHERE nome = 'Quentin Tarantino')
);

INSERT INTO filme_has_diretor(filme_id_filme,diretor_id_diretor) VALUES (
(SELECT id_filme FROM filme WHERE titulo = 'Kill Bill: Volume 2'),
(SELECT id_diretor FROM diretor WHERE nome = 'Quentin Tarantino')
);

INSERT INTO filme_has_diretor(filme_id_filme,diretor_id_diretor) VALUES (
(SELECT id_filme FROM filme WHERE titulo = 'Kung-Fusão'),
(SELECT id_diretor FROM diretor WHERE nome = 'Stephen Chow')
);

########################################################
#Insercao de relacao entre atores e filmes

#Bastardos Inglórios

INSERT INTO elenco(filme_id_filme,atores_id_atores,papel) VALUES (
(SELECT id_filme FROM filme WHERE titulo = 'Bastardos Inglórios'),
(SELECT id_atores FROM atores WHERE nome = 'Brad Pitt'),
'Tenente Aldo Raine');

INSERT INTO elenco(filme_id_filme,atores_id_atores,papel) VALUES (
(SELECT id_filme FROM filme WHERE titulo = 'Bastardos Inglórios'),
(SELECT id_atores FROM atores WHERE nome = 'Daniel Bruhl'),
'Fredrick Zoller');

INSERT INTO elenco(filme_id_filme,atores_id_atores,papel) VALUES (
(SELECT id_filme FROM filme WHERE titulo = 'Bastardos Inglórios'),
(SELECT id_atores FROM atores WHERE nome = 'Mélanie Laurent'),
'Shosanna Dreyfus / Emmanuelle Mimieux ');

#Lincoln

INSERT INTO elenco(filme_id_filme,atores_id_atores,papel) VALUES (
(SELECT id_filme FROM filme WHERE titulo = 'Lincoln'),
(SELECT id_atores FROM atores WHERE nome = 'Daniel Day-Lewis'),
'Abraham Lincoln');

INSERT INTO elenco(filme_id_filme,atores_id_atores,papel) VALUES (
(SELECT id_filme FROM filme WHERE titulo = 'Lincoln'),
(SELECT id_atores FROM atores WHERE nome = 'Joseph Gordon-Levitt'),
'Robert Todd Lincoln');

#Snowden

INSERT INTO elenco(filme_id_filme,atores_id_atores,papel) VALUES (
(SELECT id_filme FROM filme WHERE titulo = 'Snowden'),
(SELECT id_atores FROM atores WHERE nome = 'Joseph Gordon-Levitt'),
'Edward Snowden');

#Tropa de Elite

INSERT INTO elenco(filme_id_filme,atores_id_atores,papel) VALUES (
(SELECT id_filme FROM filme WHERE titulo = 'Tropa de Elite'),
(SELECT id_atores FROM atores WHERE nome = 'Wagner Moura'),
'Capitão Nascimento');

INSERT INTO elenco(filme_id_filme,atores_id_atores,papel) VALUES (
(SELECT id_filme FROM filme WHERE titulo = 'Tropa de Elite'),
(SELECT id_atores FROM atores WHERE nome = 'Maria Ribeiro'),
'Rosane');


#Requiem para um sonho

INSERT INTO elenco(filme_id_filme,atores_id_atores,papel) VALUES (
(SELECT id_filme FROM filme WHERE titulo = 'Réquiem para um Sonho'),
(SELECT id_atores FROM atores WHERE nome = 'Ellen Burstyn'),
'Sara Goldfarb');

INSERT INTO elenco(filme_id_filme,atores_id_atores,papel) VALUES (
(SELECT id_filme FROM filme WHERE titulo = 'Réquiem para um Sonho'),
(SELECT id_atores FROM atores WHERE nome = 'Jared Leto'),
'Harry Goldfarb');



#Koe no Katachi

INSERT INTO elenco(filme_id_filme,atores_id_atores,papel) VALUES (
(SELECT id_filme FROM filme WHERE titulo = 'Koe no Katachi'),
(SELECT id_atores FROM atores WHERE nome = 'Miyu Irino'),
'Shoya Ishida');

INSERT INTO elenco(filme_id_filme,atores_id_atores,papel) VALUES (
(SELECT id_filme FROM filme WHERE titulo = 'Koe no Katachi'),
(SELECT id_atores FROM atores WHERE nome = 'Saori Hayami'),
'Shoko Nishimiya');



#À espera de um milagre

INSERT INTO elenco(filme_id_filme,atores_id_atores,papel) VALUES (
(SELECT id_filme FROM filme WHERE titulo = 'À Espera de um Milagre'),
(SELECT id_atores FROM atores WHERE nome = 'Tom Hanks'),
'Paul Edgecomb');

INSERT INTO elenco(filme_id_filme,atores_id_atores,papel) VALUES (
(SELECT id_filme FROM filme WHERE titulo = 'À Espera de um Milagre'),
(SELECT id_atores FROM atores WHERE nome = 'Michael Clarke Duncan'),
'John Coffey');


#Kill Bill: Volume 1

INSERT INTO elenco(filme_id_filme,atores_id_atores,papel) VALUES (
(SELECT id_filme FROM filme WHERE titulo = 'Kill Bill: Volume 1'),
(SELECT id_atores FROM atores WHERE nome = 'Uma Thurman'),
'Beatrix Kiddo');

INSERT INTO elenco(filme_id_filme,atores_id_atores,papel) VALUES (
(SELECT id_filme FROM filme WHERE titulo = 'Kill Bill: Volume 1'),
(SELECT id_atores FROM atores WHERE nome = 'David Carradine'),
'Bill');


#Kill Bill: Volume 2

INSERT INTO elenco(filme_id_filme,atores_id_atores,papel) VALUES (
(SELECT id_filme FROM filme WHERE titulo = 'Kill Bill: Volume 2'),
(SELECT id_atores FROM atores WHERE nome = 'Uma Thurman'),
'Beatrix Kiddo');

INSERT INTO elenco(filme_id_filme,atores_id_atores,papel) VALUES (
(SELECT id_filme FROM filme WHERE titulo = 'Kill Bill: Volume 2'),
(SELECT id_atores FROM atores WHERE nome = 'David Carradine'),
'Bill');


#Kung-Fusão

INSERT INTO elenco(filme_id_filme,atores_id_atores,papel) VALUES (
(SELECT id_filme FROM filme WHERE titulo = 'Kung-Fusão'),
(SELECT id_atores FROM atores WHERE nome = 'Stephen Chow'),
'Sing');

#########################################################
#Padrao de normalizacao a parte:
#-Estrelas: (1 a 5) x 2
#-Nota: (0 a 10)
#-Qualitativo: (Excelente - 5 & Bom - 4 & Medio - 3 & Ruim - 2 & Pessimo - 1) X 2
#-Porcentagem: (Porcentagem) / 10   (porcentagem dividido por 10)
#-Normalizado: (0 a 10) fazendo a operacao correspondente ao tipo de nota

#########################################################
#Insercao de avaliacoes
#Associacao dos resultados com os avaliadores e orgaos de imprensa
INSERT INTO avaliacao(data_avaliacao,id_avaliadores_orgaos_imprensa,id_orgaos_imprensa_avaliadores,filme_id_filme,resultado_original,resultado_normalizado) VALUES ('2016-04-01', '1', '1', (SELECT id_filme FROM filme WHERE titulo = 'Bastardos Inglórios'), '4 Estrelas', 8.00);
INSERT INTO avaliacao(data_avaliacao,id_avaliadores_orgaos_imprensa,id_orgaos_imprensa_avaliadores,filme_id_filme,resultado_original,resultado_normalizado) VALUES ('2017-06-02', '1', '1', (SELECT id_filme FROM filme WHERE titulo = 'Lincoln'), '5 Estrelas', 10.00);
INSERT INTO avaliacao(data_avaliacao,id_avaliadores_orgaos_imprensa,id_orgaos_imprensa_avaliadores,filme_id_filme,resultado_original,resultado_normalizado) VALUES ('2018-08-03', '1', '1', (SELECT id_filme FROM filme WHERE titulo = 'Snowden'), '4 Estrelas', 8.00);
INSERT INTO avaliacao(data_avaliacao,id_avaliadores_orgaos_imprensa,id_orgaos_imprensa_avaliadores,filme_id_filme,resultado_original,resultado_normalizado) VALUES ('2016-10-04', '1', '1', (SELECT id_filme FROM filme WHERE titulo = 'Tropa de Elite'), '4 Estrelas', 8.00);
INSERT INTO avaliacao(data_avaliacao,id_avaliadores_orgaos_imprensa,id_orgaos_imprensa_avaliadores,filme_id_filme,resultado_original,resultado_normalizado) VALUES ('2017-12-05', '1', '1', (SELECT id_filme FROM filme WHERE titulo = 'Réquiem para um Sonho'), '5 Estrelas', 10.00);
INSERT INTO avaliacao(data_avaliacao,id_avaliadores_orgaos_imprensa,id_orgaos_imprensa_avaliadores,filme_id_filme,resultado_original,resultado_normalizado) VALUES ('2018-02-06', '1', '1', (SELECT id_filme FROM filme WHERE titulo = 'Koe no Katachi'), '4 Estrelas', 8.00);
INSERT INTO avaliacao(data_avaliacao,id_avaliadores_orgaos_imprensa,id_orgaos_imprensa_avaliadores,filme_id_filme,resultado_original,resultado_normalizado) VALUES ('2016-01-07', '1', '1', (SELECT id_filme FROM filme WHERE titulo = 'À Espera de um Milagre'), '4 Estrelas', 8.00);
INSERT INTO avaliacao(data_avaliacao,id_avaliadores_orgaos_imprensa,id_orgaos_imprensa_avaliadores,filme_id_filme,resultado_original,resultado_normalizado) VALUES ('2017-03-08', '1', '1', (SELECT id_filme FROM filme WHERE titulo = 'Kill Bill: Volume 1'), '4 Estrelas', 8.00);
INSERT INTO avaliacao(data_avaliacao,id_avaliadores_orgaos_imprensa,id_orgaos_imprensa_avaliadores,filme_id_filme,resultado_original,resultado_normalizado) VALUES ('2018-05-09', '1', '1', (SELECT id_filme FROM filme WHERE titulo = 'Kill Bill: Volume 2'), '4 Estrelas', 8.00);
INSERT INTO avaliacao(data_avaliacao,id_avaliadores_orgaos_imprensa,id_orgaos_imprensa_avaliadores,filme_id_filme,resultado_original,resultado_normalizado) VALUES ('2016-07-10', '1', '1', (SELECT id_filme FROM filme WHERE titulo = 'Kung-Fusão'), '3 Estrelas', 6.00);
INSERT INTO avaliacao(data_avaliacao,id_avaliadores_orgaos_imprensa,id_orgaos_imprensa_avaliadores,filme_id_filme,resultado_original,resultado_normalizado) VALUES ('2017-09-11', '2', '1', (SELECT id_filme FROM filme WHERE titulo = 'Bastardos Inglórios'), '4 Estrelas', 8.00);
INSERT INTO avaliacao(data_avaliacao,id_avaliadores_orgaos_imprensa,id_orgaos_imprensa_avaliadores,filme_id_filme,resultado_original,resultado_normalizado) VALUES ('2018-11-12', '2', '1', (SELECT id_filme FROM filme WHERE titulo = 'Lincoln'), '90%', 9.00);
INSERT INTO avaliacao(data_avaliacao,id_avaliadores_orgaos_imprensa,id_orgaos_imprensa_avaliadores,filme_id_filme,resultado_original,resultado_normalizado) VALUES ('2016-04-13', '2', '1', (SELECT id_filme FROM filme WHERE titulo = 'Snowden'), '85%', 8.50);
INSERT INTO avaliacao(data_avaliacao,id_avaliadores_orgaos_imprensa,id_orgaos_imprensa_avaliadores,filme_id_filme,resultado_original,resultado_normalizado) VALUES ('2017-06-14', '2', '1', (SELECT id_filme FROM filme WHERE titulo = 'Tropa de Elite'), '75%', 7.50);
INSERT INTO avaliacao(data_avaliacao,id_avaliadores_orgaos_imprensa,id_orgaos_imprensa_avaliadores,filme_id_filme,resultado_original,resultado_normalizado) VALUES ('2018-08-15', '2', '1', (SELECT id_filme FROM filme WHERE titulo = 'Réquiem para um Sonho'), '90%', 9.00);
INSERT INTO avaliacao(data_avaliacao,id_avaliadores_orgaos_imprensa,id_orgaos_imprensa_avaliadores,filme_id_filme,resultado_original,resultado_normalizado) VALUES ('2016-10-16', '2', '1', (SELECT id_filme FROM filme WHERE titulo = 'Koe no Katachi'), '75%', 7.50);
INSERT INTO avaliacao(data_avaliacao,id_avaliadores_orgaos_imprensa,id_orgaos_imprensa_avaliadores,filme_id_filme,resultado_original,resultado_normalizado) VALUES ('2017-12-17', '2', '1', (SELECT id_filme FROM filme WHERE titulo = 'À Espera de um Milagre'), '85%', 8.50);
INSERT INTO avaliacao(data_avaliacao,id_avaliadores_orgaos_imprensa,id_orgaos_imprensa_avaliadores,filme_id_filme,resultado_original,resultado_normalizado) VALUES ('2018-02-18', '2', '1', (SELECT id_filme FROM filme WHERE titulo = 'Kill Bill: Volume 1'), '80%', 8.00);
INSERT INTO avaliacao(data_avaliacao,id_avaliadores_orgaos_imprensa,id_orgaos_imprensa_avaliadores,filme_id_filme,resultado_original,resultado_normalizado) VALUES ('2019-01-19', '2', '1', (SELECT id_filme FROM filme WHERE titulo = 'Kill Bill: Volume 2'), '77%', 7.70);
INSERT INTO avaliacao(data_avaliacao,id_avaliadores_orgaos_imprensa,id_orgaos_imprensa_avaliadores,filme_id_filme,resultado_original,resultado_normalizado) VALUES ('2019-03-20', '2', '1', (SELECT id_filme FROM filme WHERE titulo = 'Kung-Fusão'), '45%', 4.50);
INSERT INTO avaliacao(data_avaliacao,id_avaliadores_orgaos_imprensa,id_orgaos_imprensa_avaliadores,filme_id_filme,resultado_original,resultado_normalizado) VALUES ('2017-09-07', '1', '1', (SELECT id_filme FROM filme WHERE titulo = 'Bastardos Inglórios'), '5 Estrelas', 10.00);
INSERT INTO avaliacao(data_avaliacao,id_avaliadores_orgaos_imprensa,id_orgaos_imprensa_avaliadores,filme_id_filme,resultado_original,resultado_normalizado) VALUES ('2018-11-08', '1', '1', (SELECT id_filme FROM filme WHERE titulo = 'Lincoln'), '4 Estrelas', 8.00);
INSERT INTO avaliacao(data_avaliacao,id_avaliadores_orgaos_imprensa,id_orgaos_imprensa_avaliadores,filme_id_filme,resultado_original,resultado_normalizado) VALUES ('2016-04-09', '1', '1', (SELECT id_filme FROM filme WHERE titulo = 'Snowden'), '4 Estrelas', 8.00);
INSERT INTO avaliacao(data_avaliacao,id_avaliadores_orgaos_imprensa,id_orgaos_imprensa_avaliadores,filme_id_filme,resultado_original,resultado_normalizado) VALUES ('2017-06-10', '1', '1', (SELECT id_filme FROM filme WHERE titulo = 'Tropa de Elite'), '4 Estrelas', 8.00);
INSERT INTO avaliacao(data_avaliacao,id_avaliadores_orgaos_imprensa,id_orgaos_imprensa_avaliadores,filme_id_filme,resultado_original,resultado_normalizado) VALUES ('2018-08-11', '1', '1', (SELECT id_filme FROM filme WHERE titulo = 'Réquiem para um Sonho'), '4 Estrelas', 8.00);
INSERT INTO avaliacao(data_avaliacao,id_avaliadores_orgaos_imprensa,id_orgaos_imprensa_avaliadores,filme_id_filme,resultado_original,resultado_normalizado) VALUES ('2016-10-12', '1', '1', (SELECT id_filme FROM filme WHERE titulo = 'Koe no Katachi'), '4 Estrelas', 8.00);
INSERT INTO avaliacao(data_avaliacao,id_avaliadores_orgaos_imprensa,id_orgaos_imprensa_avaliadores,filme_id_filme,resultado_original,resultado_normalizado) VALUES ('2017-12-13', '1', '1', (SELECT id_filme FROM filme WHERE titulo = 'À Espera de um Milagre'), '5 Estrelas', 10.00);
INSERT INTO avaliacao(data_avaliacao,id_avaliadores_orgaos_imprensa,id_orgaos_imprensa_avaliadores,filme_id_filme,resultado_original,resultado_normalizado) VALUES ('2018-02-14', '1', '1', (SELECT id_filme FROM filme WHERE titulo = 'Kill Bill: Volume 1'), '4 Estrelas', 8.00);
INSERT INTO avaliacao(data_avaliacao,id_avaliadores_orgaos_imprensa,id_orgaos_imprensa_avaliadores,filme_id_filme,resultado_original,resultado_normalizado) VALUES ('2019-01-15', '1', '1', (SELECT id_filme FROM filme WHERE titulo = 'Kill Bill: Volume 2'), '4 Estrelas', 8.00);
INSERT INTO avaliacao(data_avaliacao,id_avaliadores_orgaos_imprensa,id_orgaos_imprensa_avaliadores,filme_id_filme,resultado_original,resultado_normalizado) VALUES ('2019-03-16', '1', '1', (SELECT id_filme FROM filme WHERE titulo = 'Kung-Fusão'), '2 Estrelas', 4.00);


#('2018-01-10','1','3',(SELECT id_filme FROM filme WHERE titulo = ''),'8',8.00),
#('2018-01-10','1','3',(SELECT id_filme FROM filme WHERE titulo = ''),'8',8.00),
#('2018-01-10','1','3',(SELECT id_filme FROM filme WHERE titulo = ''),'8',8.00),
#('2018-01-10','1','3',(SELECT id_filme FROM filme WHERE titulo = ''),'8',8.00),
#('2018-01-10','1','3',(SELECT id_filme FROM filme WHERE titulo = ''),'8',8.00),
#('2018-01-10','1','3',(SELECT id_filme FROM filme WHERE titulo = ''),'8',8.00)
;

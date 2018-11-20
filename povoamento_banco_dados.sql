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

#############################################################
#Insercao de atores

#
INSERT INTO atores(nome,ano_nascimento,genero) VALUES ('Brad Pitt','1963','MASC');
#
INSERT INTO atores(nome,ano_nascimento,genero) VALUES ('Daniel Bruhl','1978','MASC');
#
INSERT INTO atores(nome,ano_nascimento,genero) VALUES ('Mélaine Laurent','1983','FEM');

#https://pt.wikipedia.org/wiki/Daniel_Day-Lewis
INSERT INTO atores(nome,ano_nascimento,genero) VALUES ('Daniel Day-Lewis','1957','MASC');
#https://pt.wikipedia.org/wiki/Joseph_Gordon-Levitt
INSERT INTO atores(nome,ano_nascimento,genero) VALUES ('Joseph Gordon-Levitt','1981','MASC');

#https://pt.wikipedia.org/wiki/Wagner_Moura
INSERT INTO atores(nome,ano_nascimento,genero) VALUES ('Wagner Moura','1976','MASC');
#https://pt.wikipedia.org/wiki/Maria_Ribeiro
INSERT INTO atores(nome,ano_nascimento,genero) VALUES ('Maria Ribeiro','1975','FEM');

INSERT INTO atores(nome,ano_nascimento,genero) VALUES ('','','');
INSERT INTO atores(nome,ano_nascimento,genero) VALUES ('','','');
INSERT INTO atores(nome,ano_nascimento,genero) VALUES ('','','');

########################################################
#Insercao de orgaos de imprensa

INSERT INTO orgaos_imprensa(nome_orgao) VALUES ('IMDB');
INSERT INTO orgaos_imprensa(nome_orgao) VALUES ('Rotten Tomatos');
INSERT INTO orgaos_imprensa(nome_orgao) VALUES ('Metacritic');

########################################################
#Insercao de avaliadores

########################################################
#Insercao de avaliadores e orgaos de imprensa

########################################################
#Insercao de filmes     -- Para insercao de horas de filme, use minutos vezes 60

#https://pt.wikipedia.org/wiki/Inglourious_Basterds
INSERT INTO filme(titulo,duracao,data_de_lancamento,genero_filme_fk,idioma_fk,pais_fk) VALUES ('Bastardos Inglórios',SEC_TO_TIME(153*60),'2009-05-20',
(SELECT nome FROM genero_filme WHERE nome = 'Ação'),
(SELECT nome_idioma FROM idioma WHERE nome_idioma = 'Inglês'),
(SELECT nome_pais FROM pais WHERE nome_pais = 'USA')
);

#https://pt.wikipedia.org/wiki/Lincoln_(filme)
INSERT INTO filme(titulo,duracao,data_de_lancamento,genero_filme_fk,idioma_fk,pais_fk) VALUES ('Lincoln',SEC_TO_TIME(150*60),'2012-10-08',
(SELECT nome FROM genero_filme WHERE nome = 'Drama'),
(SELECT nome_idioma FROM idioma WHERE nome_idioma = 'Inglês'),
(SELECT nome_pais FROM pais WHERE nome_pais = 'USA')
);

#https://pt.wikipedia.org/wiki/Snowden_(filme)
INSERT INTO filme(titulo,duracao,data_de_lancamento,genero_filme_fk,idioma_fk,pais_fk) VALUES ('Snowden',SEC_TO_TIME(134*60),'2016-09-09',
(SELECT nome FROM genero_filme WHERE nome = 'Drama'),
(SELECT nome_idioma FROM idioma WHERE nome_idioma = 'Inglês'),
(SELECT nome_pais FROM pais WHERE nome_pais = 'USA')
);

#https://pt.wikipedia.org/wiki/Tropa_de_Elite_(2007)
INSERT INTO filme(titulo,duracao,data_de_lancamento,genero_filme_fk,idioma_fk,pais_fk) VALUES ('Tropa de Elite',SEC_TO_TIME(118*60),'2007-10-12',
(SELECT nome FROM genero_filme WHERE nome = 'Policial'),
(SELECT nome_idioma FROM idioma WHERE nome_idioma = 'Português-Brasil'),
(SELECT nome_pais FROM pais WHERE nome_pais = 'BR')
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
(SELECT id_filme FROM filme WHERE titulo = 'Snowden'),
(SELECT id_diretor FROM diretor WHERE nome = 'Oliver Stone')
);

INSERT INTO filme_has_diretor(filme_id_filme,diretor_id_diretor) VALUES (
(SELECT id_filme FROM filme WHERE titulo = 'Tropa de Elite'),
(SELECT id_diretor FROM diretor WHERE nome = 'José Padilha')
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
(SELECT id_atores FROM atores WHERE nome = 'Mélaine Laurent'),
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

#########################################################
#Insercao de avaliacoes


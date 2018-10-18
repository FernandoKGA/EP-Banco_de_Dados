INSERT INTO idioma(nome_idioma) VALUES ('Português');
INSERT INTO genero_filme(nome) VALUES ('Drama');
INSERT INTO filme(titulo,duracao,data_de_lancamento,genero_filme,idioma_id_idioma) VALUES ('A onda','1:00','2018-10-17',1,1);
/* ELE INSERE DE QUALQUER FORMA! Para garantir que só insira com algum diretor, talvez fazer um procedimento? */
INSERT INTO diretor(nome,ano_nascimento,genero) VALUES ('Amoedo', '1950','MASC');
INSERT INTO diretor(nome,ano_nascimento,genero) VALUES ('Jânio', '1985','MASC');
INSERT INTO filme_has_diretor VALUES (2,1);
INSERT INTO filme_has_diretor VALUES (2,2);
/* Só garante que ele não será deletado! Inserção continua igual! */
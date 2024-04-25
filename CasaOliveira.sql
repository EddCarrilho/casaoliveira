-- selecionar o banco de dados

USE casaoliveira;

-- exibir todos os bancos de dados

SHOW DATABASES;


-- exibir todas as tabelas de um banco de dados

SHOW TABLES;


-- exibir a estrutura de uma tabela
DESCRIBE usuario;


-- vamos exibir os dados presentes na tabela usuario

-- utilizaremos o comando select
SELECT * FROM usuario;

-- comando para cadastrar o primeiro usuario
INSERT INTO usuario(nomeusuario,senha,foto)values("eduardo",sha1("gememeunome"),"usuario.jpg");
INSERT INTO usuario(nomeusuario,senha,foto)values("leandro",sha1("kk124564"),"usuario.jpg");
INSERT INTO usuario(nomeusuario,senha,foto)values("Robertin",sha1("dograu123"),"usuario.jpg");

-- comando para atualizar os dados da tabela usuario

-- vamos atualizar a senha para um novo valor

-- criptografado usando MD5 ou SHA

-- Vamos fazer um pequeno teste

SELECT md5("abc123") FROM dual;
SELECT SHA("abc123") FROM dual;

UPDATE usuario SET senha=sha1("abc123") WHERE idusuario=1;

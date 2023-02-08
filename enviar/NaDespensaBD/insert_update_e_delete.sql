-- inserindo dados na tabela USUARIO
INSERT INTO USUARIO(ID_USUARIO, SENHA, NOME)
     VALUES (314904, "neto1234", "Sebastiao Neto")
             ,( 315704, "dl2515", "Douglas Leonel")
             ,(316208, "ale16oliveira", "Alexandre Oliveira")
             ,(317409, "thagosilva02", "Thiago Silva")
-- inserindo dados na tabela ALIMENTOS
INSERT INTO ALIMENTOS(NOME_ PRODUTO, ID_PRODUTO, VALIDADE, QUANTIDADE_PRODUTO)
     VALUES ("banana", 221476, 11/12/24, 12)
             ,( "alface", 246671, 12/11/23, 3)
             ,("leite", 237190, 10/08/22, 5)
             ,("carne",258801, 03/07/23, 4)

-- alterando senha do usuario
UPDATE USUARIO SET SENHA = "SEBASTIAO123" WHERE ID_USUARIO = 314904
-- alterando quantidade de produtos
UPDATE ALIMENTOS SET QUANTIDADE_PRODUTO = 9 WHERE ID_PRODUTO = 221476

-- Deletando usuario da tabela
DELETE FROM USUARIO WHERE ID_USUARIO = 315704 
-- deletando alimento da tabela
DELETE FROM ALIMENTO WHERE ID_PRODUTO = 237190





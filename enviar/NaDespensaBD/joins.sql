-- Criando um dataBase para testes

CREATE DATABASE dbTESTE_JOINS

GO

-- Usando o DataBase para criar as tabelas e povoá-las

USE dbTESTE_JOINS

GO

-- Criando a tabela Produto

CREATE TABLE Produto

(

   CodProduto char(2)      NOT NULL,

   NomeProduto varchar(50) NULL,

   ValorProduto money      NULL,

   PRIMARY KEY(CodProduto)

)

GO

-- Criando a tabela Pedido

CREATE TABLE PEDIDO

(

   Registro int,

   NomePedido varchar(50) NOT NULL,

   CodProduto char(2)   NULL,

   PRIMARY KEY(Registro),

   FOREIGN KEY (CodProduto) REFERENCES PRODUTO (CodProduto)

)

GO

-- Povoando a tabela PRODUTO

INSERT PRODUTO (CodProduto, NomeProduto, ValorProduto) VALUES (''''''''C1'''''''',
''''''''E-COMMERCE''''''''   ,  800.00)

INSERT Produto (CodProduto, NomeProduto, ValorProduto) VALUES (''''''''C2'''''''',
''''''''PEDIDO'''''''', 1200.00)

INSERT Produto (CodProduto, NomeProduto, ValorProduto) VALUES (''''''''C3'''''''',
''''''''DELIVERY'''''''' , 2400.00)

GO

-- Povoando a tabela PEDIDO

INSERT PEDIDO (Registro, NomePedido, CodProduto) VALUES (100,
''''''''FRUTA''''''''   , ''''''''C1'''''''')

INSERT PEDIDO (Registro, NomePedido, CodProduto) VALUES (110,
''''''''CARNE''''''''  , ''''''''C2'''''''')

INSERT PEDIDO (Registro, NomePedido, CodProduto) VALUES (120,
''''''''BEBIDAS'''''''' , ''''''''C1'''''''')

INSERT PEDIDO (Registro, NomePedido, CodProduto) VALUES (130,
''''''''MISTURA''''''''  , NULL)

GO

-----------------------------------------

-- EXEMPLOS DE JOIN ABORDADOS NO CÓDIGO

-----------------------------------------



-- Seleção Simples ( Todos os Produtos e Todos os Pedidos ) 

SELECT * FROM PRODUTO       AS PR --> Apelidamos a tabelas
produto de PR neste código

SELECT * FROM PEDIDOS AS P --> Apelidamos
pedido de P neste código

GO

-- CROSS JOIN 

SELECT P.NomePedido

      ,PR.NomeProduto

FROM            PRODUTO       AS PR

   CROSS JOIN   PEDIDOS  AS P

-- INNER JOIN ( Junção Interna ) 

SELECT P.NomePedido

      ,PR.NomeProduto

FROM            PRODUTO        AS PR

   INNER JOIN   PEDIDO  AS P ON (F.CodProduto = C.CodProduto)

-- LEFT OUTER JOIN ou simplesmente LEFT JOIN 

SELECT F.nomePedidos

      ,C.nomeProdutos

FROM                    PEDIDOS AS P

       LEFT OUTER JOIN  PRODUTOS       AS PR ON ( PR.codProduto =
       P.codProduto )

-- RIGHT OUTER JOIN ou simplesmente RIGHT JOIN 

SELECT F.nomePedidos

      ,C.nomeProdutos

FROM                    PEDIDOS AS P

       RIGHT OUTER JOIN  PRODUTO       AS PR ON ( P.codProduto
       = PR.codProduto )

-- FULL OUTHER JOIN ou simplesmente FULL JOIN 

SELECT F.nomePedidos

      ,C.nomeProduto

FROM                     PEDIDOS AS P

       FULL OUTER JOIN  PRODUTOS       AS PR ON ( PR.codProduto
       = P.codProduto )

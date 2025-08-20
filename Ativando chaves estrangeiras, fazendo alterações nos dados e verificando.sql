PRAGMA foreign_keys = ON -- Ativando as chaves estrangeiras com comando unico desse SGBD

SELECT * FROM produtos where id = 31; --Buscando na tabela produtos o id 31

update produtos --Fazendo uma alteração na coluna 'preco'
SET preco = 13.5 -- para 'R$ 13,50'
WHERE id = 31; -- Usando como referencia a coluna ID onde tem o valor 31

SELECT * FROM produtos where id = 31; -- Conferindo




SELECT * FROM produtos where nome LIKE 'croissant%'; --Buscando na tabela produtos o nome do produto que contenha a palavra "croissant"
-- Usando o sinalzador '%' que informa que tem mais caracteres a partir da palavra buscada


update produtos -- fazendo uma alteração nessa tabela
SET descricao = 'Croissant recheado de amêndoas.' -- Informando o conteúdo que vai ser alterado na coluna descrição 
WHERE id = 28; -- Usando a coluna ID, buscando o valor '31'


SELECT pr.nome, x.idproduto, x.idpedido -- Aqui estou especificando o que quero buscar ja como Tabela.Coluna
FROM(
  SELECT ip.idpedido, ip.idproduto 
  FROM pedidos p
  JOIN itenspedidos ip  --Informando quais tabelas e informando como estou nomeando elas para essa consulta
  ON p.id = ip.idpedido --Especificando qual a relação delas 
  WHERE strftime('%m', p.datahora) = '10' ) x --informando  que o que quero buscar é um período entre data, no caso: (um mês, na coluna datahora, na tabela pedidos), com o valor 10 e apelidando como 'x' 
    
 RIGHT join produtos pr --unindo a direita da coluna do id do porduto, ficará a coluna do ID do pedido 
 ON pr.id = x.idproduto --informando a relação que tem entre o id na tabela produtos com o idproduto na tabela itenspedidos apelidado por 'x'
 
 --usando como quando quero saber quais produtos foram pedidos num determinado periodo de tempo
 
 
 
 SELECT c.nome, x.id --informando o que quero visualizar
 from clientes c --unindo as tebelas 
 LEFT join
 (
 	SELECT p.id, p.idcliente --informando que na segunda tabela eu quero na tabela pedidos eu quero o ID daquela linha na coluna e o ID do cliente
 	from pedidos p
 	where strftime('%m', p.datahora) = '10') X -- buscando um periodo de tempo que seja '10', dentro da tabela pedidos
 ON c.id = x.idcliente -- informando que o ID na tabela cliente É o idcliente na tabela pedidos
 where x.idcliente IS NULL; --onde o valor que procuro seja vario
 
 
 --Usado quando quero buscar os nomes dos clientes que compraram no mes 10 e ainda nao tenham cadastro
 
 
 

 --aqui eu quero saber o nome e o id de um cliente que no caso nao tenha cadastro
SELECT c.nome, p.id 
FROM clientes c
FULL join pedidos p
on c.id = p.idcliente
where p.id is NULL
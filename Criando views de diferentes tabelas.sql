-- A importancia de uma VIEW se dá à segurança e privacidade dos dados, que podem ser determinados por hierarquias, setores, cultura da empresa. 
-- E assegurando a integridade das informaçoes e praticidade de consulta


SELECT p.id, c.nome, p.datahora, sum(ip.precounitario) AS ValorTotalPedido --determinando as consultas, 
--fazendo a soma do preço unitario na tabela itenspedidos,
-- nomeando como ValorTotalPedido
FROM clientes c 
join pedidos p on c.id = p.idcliente
JOIN itenspedidos ip on p.id = ip.idpedido --unificando as tabelas e colunas que quero buscar e relacionar
group by p.id, c.nome; --Agrupando o ID do pedido ao nome do cliente 



create view viewClientes AS--criando uma view
select nome, endereco FROM clientes
    
    


CREATE view viewValorTotalPedidos AS --aqui estou criando uma view chamada ViewValorTotalPedidos
SELECT p.id, c.nome, p.datahora, sum(ip.precounitario) AS ValorTotalPedido --usando os mesmos criterios e informaçoes anterior
--fazendo a soma do preço unitario na tabela itenspedidos,
-- nomeando como ValorTotalPedido
FROM clientes c 
join pedidos p on c.id = p.idcliente --unificando as tabelas e colunas que quero buscar e relacionar
JOIN itenspedidos ip on p.id = ip.idpedido
group by p.id, c.nome; --Agrupando o ID do pedido ao nome do cliente 



SELECT * from viewValorTotalPedidos--visualizando a view


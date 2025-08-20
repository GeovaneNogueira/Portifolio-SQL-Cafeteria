SELECT date(datahora) as dia, sum(ip.precounitario) AS faturamentodiario --consultando em formato de data dentro da coluna datahora, apelidada como 'dia'
--trazendo uma operação de de soma pra dentro da segunda coluna na pesquisa, que calcular o precounitario dentro de itens pedidos, apelidado de faturamento diario
from pedidos p
join itenspedidos ip 
on p.id = ip.idpedido --unindo as colunas relacionando que o id em pedidos, é igual o idpedido dentro de itenspedidos
group by  dia
order by dia; --agrupando e ordenando por dia


create table faturamentodiario(           --Criando a tabela faturamento com as colunas, dia em formato DATE, e faturamento total em formato DECIMAL, com até duas casas decimais
  dia date,
  faturamentototal decimal (10,2)
  );
  
  
  

create trigger calculafaturamentodiario --Aqui estou criando um gatilho chamando "calculafaturamentodiario"
after INSERT on itenspedidos -- dentro de itenspedidos que vai ser acionado por linha
for each row
begin
DELETE from faturamentodiario; --limpa o faturamentodiario 
INSERT into faturamentodiario( dia, faturamentototal) --insere as ifnromaçoes dentro dessa tabela com as colunas dia e faturamento total
SELECT date(datahora) as dia, sum(ip.precounitario) AS faturamentodiario --definindo o tipo de dado, apelidando, e efetuando uma operação soma
from pedidos p
join itenspedidos ip
on p.id = ip.idpedido --unindo as duas tabelas e informando a relação entre elas
group by  dia
order by dia; --agrupando e ordenando como 'dia'
end; --encerra o processo
  
  
--Mesma operação antes de incluir o gatilho(TRIGGER)
INSERT into faturamentodiario( dia, faturamentototal)
SELECT date(datahora) as dia, sum(ip.precounitario) AS faturamentodiario
from pedidos p
join itenspedidos ip
on p.id = ip.idpedido
group by  dia
order by dia;


SELECT * FROM pedidos --consulta simples para verificar

insert into pedidos(id, idcliente, datahora, status)VALUES --inserindo dados na tabela pedidos seguindo as colunas
(451, 27, '2023-10-07 14:30:00', 'Em Andamento');


--consulta
SELECT * from pedidos

SELECT * from itenspedidos

---------

--Operações simples nas tabelas

INSERT into itenspedidos(idpedido, idproduto, quantidade, precounitario) --Inserção de dados 
values(451, 14, 1, 6.0),
	  (451, 13, 1, 7.0);
      
      
SELECT * from faturamentodiario --Consultas
		


insert into pedidos(id, idcliente, datahora, status)VALUES --INSERT's
(452, 28, '2023-10-07 14:35:00', 'Em Andamento');
  
INSERT into itenspedidos(idpedido, idproduto, quantidade, precounitario)
values(452, 10, 1, 5.0),
	  (452, 31, 1, 12.50);
  
  
  SELECT * from faturamentodiario
  
  
  
  
  
  
  
  
  
  
  
  
  
 
  
BEGIN TRANSACTION;

SELECT * from clientes

SELECT * FROM pedidos


UPDATE pedidos SET status = 'Concluido'  where status = 'Em Andamento'


DELETE from clientes 



ROLLBACK; 


COMMIT
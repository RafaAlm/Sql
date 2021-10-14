-- Stored Procedures:
-- Procedimento Armazenado, é uma conjunto de comandos em SQL que podem ser executados de uma só vez,
-- como em uma função. Ele armazena tarefas repetitivas e aceita parâmetros de entrada para 
-- que a tarefa seja efetuada de acordo com a necessidade individual.

DELIMITER $$
create procedure GetTotalOrder()
BEGIN
	DECLARE totalOuder INT DEFAULT;
    
    select COUNT(*)
    INTO totalOrder
    FROM countries
    
    select totalOrder;           call GetTotalOrder();

END$$


-- View:
-- A view pode ser definida como uma tabela virtual composta por linhas e colunas de dados vindos de tabelas relacionadas em uma query
-- (um agrupamento de SELECT’s, por exemplo). As linhas e colunas da view são geradas dinamicamente no momento em que é feita uma referência a ela.

CREATE VIEW vwProdutos AS
SELECT IdProduto AS Código,
       Nome AS Produto,
       Fabricante,
       Quantidade,
       VlUnitario AS [ValorUnitario],
       Tipo
FROM Produtos

-- Trigger:
-- Um Trigger é um procedimento armazenado no banco de dados que é chamado automaticamente sempre que ocorre um evento especial no banco de dados.
-- Por exemplo, um acionador pode ser chamado quando uma linha é inserida em uma tabela especificada ou quando determinadas colunas da tabela estão
-- sendo atualizadas.

delimiter //
CREATE TRIGGER vwProdutos
AFTER INSERT ON usuario_voto
FOR EACH ROW
BEGIN
Aqui você coloca a estrutura do trigger.
END //
delimiter ;


-- Consulta SQL para retornar a lista de produtos que participaram de todas as vendas.
-- Baseado no modelo de Venda & Produto e nos dados fornecidos em vendas.ddl.sql.

USE VENDAS; 

SELECT
    P.idProduto,
    P.descricao AS nome_produto 
FROM
    Produto AS P
JOIN
    ItemVenda AS IV ON P.idProduto = IV.idProduto
GROUP BY
    P.idProduto, P.descricao
HAVING
    COUNT(DISTINCT IV.idVenda) = (SELECT COUNT(*) FROM Venda);
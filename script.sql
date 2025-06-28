-- Criação das tabelas
CREATE TABLE Produto (
    idProduto INT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE Venda (
    idVenda INT PRIMARY KEY,
    data DATE
);

CREATE TABLE ItemVenda (
    idItemVenda INT PRIMARY KEY,
    idVenda INT,
    idProduto INT,
    valorUnitario DECIMAL(10,2),
    quantidade INT,
    FOREIGN KEY (idVenda) REFERENCES Venda(idVenda),
    FOREIGN KEY (idProduto) REFERENCES Produto(idProduto)
);

-- Inserção de Produtos
INSERT INTO Produto (idProduto, nome) VALUES
(1, 'Teclado Mecânico'),
(2, 'Mouse Gamer'),
(3, 'Monitor 24"'),
(4, 'Headset'),
(5, 'Webcam Full HD');

-- Inserção de Vendas
INSERT INTO Venda (idVenda, data) VALUES
(1, '2025-06-01'),
(2, '2025-06-15');

-- Inserção de Itens de Venda
INSERT INTO ItemVenda (idItemVenda, idVenda, idProduto, valorUnitario, quantidade) VALUES
(1, 1, 1, 250.00, 1),
(2, 1, 2, 150.00, 2),
(3, 1, 4, 300.00, 1),
(4, 2, 3, 900.00, 1),
(5, 2, 5, 200.00, 1);

-- Consultas para exibir os dados
SELECT * FROM Produto;
SELECT * FROM Venda;
SELECT * FROM ItemVenda;

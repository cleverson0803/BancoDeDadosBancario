-- Listar todos os clientes
SELECT * FROM Clientes;

-- Listar todas as contas com saldo maior que 1000
SELECT * FROM Contas WHERE Saldo > 1000;

-- Listar todas as transações de uma conta específica
SELECT * FROM Transacoes WHERE ContaOrigemID = 1;

-- Listar o saldo total de todas as contas de um cliente
SELECT ClienteID, SUM(Saldo) AS SaldoTotal
FROM Contas
GROUP BY ClienteID;

-- Inserindo Agências
INSERT INTO Agencias (Nome, Endereco) VALUES ('Agência Central', 'Rua Principal, 123');
INSERT INTO Agencias (Nome, Endereco) VALUES ('Agência Norte', 'Avenida Norte, 456');

-- Inserindo Clientes
INSERT INTO Clientes (Nome, Sobrenome, CPF, DataDeNascimento, Endereco) VALUES 
('João', 'Silva', '12345678901', '1980-05-15', 'Rua das Flores, 789'),
('Maria', 'Oliveira', '98765432101', '1992-09-20', 'Avenida Brasil, 1011');

-- Inserindo Contas
INSERT INTO Contas (NumeroConta, TipoConta, Saldo, ClienteID, AgenciaID) VALUES
('12345-6', 'Corrente', 1000.00, 1, 1),
('98765-4', 'Poupanca', 1500.00, 2, 2);

-- Inserindo Transações
INSERT INTO Transacoes (TipoTransacao, Valor, ContaOrigemID) VALUES
('Deposito', 500.00, 1),
('Saque', 200.00, 1),
('Transferencia', 300.00, 1, 2);

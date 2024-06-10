-- Criação do Banco de Dados
CREATE DATABASE BancoDeDadosBancario;
USE BancoDeDadosBancario;

-- Tabela de Clientes
CREATE TABLE Clientes (
    ClienteID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Sobrenome VARCHAR(100) NOT NULL,
    CPF VARCHAR(11) NOT NULL UNIQUE,
    DataDeNascimento DATE,
    Endereco VARCHAR(255)
);

-- Tabela de Agências
CREATE TABLE Agencias (
    AgenciaID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Endereco VARCHAR(255)
);

-- Tabela de Contas
CREATE TABLE Contas (
    ContaID INT AUTO_INCREMENT PRIMARY KEY,
    NumeroConta VARCHAR(20) NOT NULL UNIQUE,
    TipoConta ENUM('Corrente', 'Poupanca') NOT NULL,
    Saldo DECIMAL(10, 2) DEFAULT 0.00,
    ClienteID INT,
    AgenciaID INT,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID),
    FOREIGN KEY (AgenciaID) REFERENCES Agencias(AgenciaID)
);

-- Tabela de Transações
CREATE TABLE Transacoes (
    TransacaoID INT AUTO_INCREMENT PRIMARY KEY,
    DataTransacao DATETIME DEFAULT CURRENT_TIMESTAMP,
    TipoTransacao ENUM('Deposito', 'Saque', 'Transferencia') NOT NULL,
    Valor DECIMAL(10, 2) NOT NULL,
    ContaOrigemID INT,
    ContaDestinoID INT,
    FOREIGN KEY (ContaOrigemID) REFERENCES Contas(ContaID),
    FOREIGN KEY (ContaDestinoID) REFERENCES Contas(ContaID)
);

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

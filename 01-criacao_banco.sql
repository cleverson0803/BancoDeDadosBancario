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

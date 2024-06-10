
# Banco de Dados Bancário com MySQL

![MySQL](https://img.shields.io/badge/MySQL-v8.0-blue)
![License](https://img.shields.io/badge/license-MIT-green)

## Visão Geral

Este projeto demonstra a construção de um banco de dados relacional usando MySQL, focado em um sistema bancário. Ele inclui a criação de tabelas, inserção de dados e consultas SQL exemplares para resolver problemas comuns no setor bancário.

## Estrutura do Projeto

- **01-criacao_banco.sql**: Script para criar as tabelas do banco de dados.
- **02-insercao_dados.sql**: Script para inserir dados de exemplo nas tabelas.
- **03-consultas_exemplos.sql**: Exemplos de consultas SQL úteis.

## Funcionalidades

- **Gestão de Clientes**: Informações pessoais e de contato.
- **Gestão de Contas**: Contas correntes e poupança com saldo.
- **Transações Bancárias**: Registro de depósitos, saques e transferências.
- **Gestão de Agências**: Informações sobre diferentes agências bancárias.

## Começando

### Pré-requisitos

- MySQL instalado na sua máquina. [Baixe aqui](https://dev.mysql.com/downloads/installer/).

### Instalação

1. Clone o repositório:

   \```bash
   git clone https://github.com/cleverson0803/BancoDeDadosBancario.git
   cd BancoDeDadosBancario
   \```

2. Crie o banco de dados e as tabelas:

   \```sql
   source 01-criacao_banco.sql;
   \```

3. Insira os dados de exemplo:

   \```sql
   source 02-insercao_dados.sql;
   \```

4. Execute as consultas de exemplo:

   \```sql
   source 03-consultas_exemplos.sql;
   \```

## Exemplos de Uso

### Listar todos os clientes

\```sql
SELECT * FROM Clientes;
\```

### Listar todas as contas com saldo maior que 1000

\```sql
SELECT * FROM Contas WHERE Saldo > 1000;
\```

### Listar todas as transações de uma conta específica

\```sql
SELECT * FROM Transacoes WHERE ContaOrigemID = 1;
\```

### Listar o saldo total de todas as contas de um cliente

\```sql
SELECT ClienteID, SUM(Saldo) AS SaldoTotal
FROM Contas
GROUP BY ClienteID;
\```

## Contribuição

1. Faça um fork do projeto.
2. Crie uma branch para sua feature (`git checkout -b feature/nova-feature`).
3. Commit suas mudanças (`git commit -m 'Adiciona nova feature'`).
4. Push para a branch (`git push origin feature/nova-feature`).
5. Abra um Pull Request.

## Licença

Este projeto está licenciado sob a Licença MIT - veja o arquivo [LICENSE](LICENSE) para mais detalhes.

## Contato

- **Seu Nome**: [Seu LinkedIn](https://www.linkedin.com/in/seu-usuario/)
- **Email**: seuemail@exemplo.com

---

Feito com ❤️ por [Seu Nome](https://github.com/seu-usuario)

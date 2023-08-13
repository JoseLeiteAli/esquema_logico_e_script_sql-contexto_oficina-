CREATE DATABASE Ofic_Mec;
USE Ofic_Mec;
CREATE TABLE Clientes (
    ID_Cliente INTEGER PRIMARY KEY auto_increment,
    Nome TEXT NOT NULL,
    Endereco TEXT NOT NULL,
    Telefone TEXT NOT NULL,
    Email TEXT NOT NULL
);

CREATE TABLE Veiculos (
    ID_Veiculo INTEGER PRIMARY KEY auto_increment,
    Marca TEXT NOT NULL,
    Modelo TEXT NOT NULL,
    Ano INTEGER NOT NULL,
    Placa TEXT NOT NULL,
    Cor TEXT NOT NULL,
    ID_Cliente INTEGER NOT NULL,
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente)
);

CREATE TABLE Servicos (
    ID_Servico INTEGER PRIMARY KEY auto_increment,
    Tipo_Servico TEXT NOT NULL,
    Descricao TEXT NOT NULL,
    Preco REAL NOT NULL
);

CREATE TABLE Ordens_Servico (
    ID_Ordem_Servico INTEGER PRIMARY KEY auto_increment,
    Data_Emissao TEXT NOT NULL,
    ID_Cliente INTEGER NOT NULL,
    ID_Veiculo INTEGER NOT NULL,
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente),
    FOREIGN KEY (ID_Veiculo) REFERENCES Veiculos(ID_Veiculo)
);

CREATE TABLE Itens_Ordem_Servico (
    ID_Item_Ordem_Servico INTEGER PRIMARY KEY auto_increment,
    ID_Ordem_Servico INTEGER NOT NULL,
    ID_Servico INTEGER NOT NULL,
    Quantidade INTEGER NOT NULL,
    FOREIGN KEY (ID_Ordem_Servico) REFERENCES Ordens_Servico(ID_Ordem_Servico),
    FOREIGN KEY (ID_Servico) REFERENCES Servicos(ID_Servico)
);




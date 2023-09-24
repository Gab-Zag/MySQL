-- Criação das tabelas
CREATE TABLE CompanhiaAerea (
    CompanhiaAereaID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    PaisOrigem VARCHAR(255) NOT NULL,
    AnoFundacao INT
);

CREATE TABLE Aeronave (
    AeronaveID INT AUTO_INCREMENT PRIMARY KEY,
    IdentificacaoUnica VARCHAR(255) NOT NULL,
    Modelo VARCHAR(255) NOT NULL,
    CapacidadePassageiros INT,
    AnoFabricacao INT
);

CREATE TABLE Passageiro (
    CPF VARCHAR(11) PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Email VARCHAR(255),
    Telefone VARCHAR(20),
    DataNascimento DATE
);

CREATE TABLE Voo (
    VooID INT AUTO_INCREMENT PRIMARY KEY,
    NumeroVoo VARCHAR(20) NOT NULL,
    Origem VARCHAR(255) NOT NULL,
    Destino VARCHAR(255) NOT NULL,
    DataPartida DATETIME,
    DataChegada DATETIME,
    QuantidadeAssentos INT,
    CompanhiaAereaID INT,
    AeronaveID INT,
    FOREIGN KEY (CompanhiaAereaID) REFERENCES CompanhiaAerea(CompanhiaAereaID),
    FOREIGN KEY (AeronaveID) REFERENCES Aeronave(AeronaveID)
);

CREATE TABLE Passaporte (
    PassaporteID INT AUTO_INCREMENT PRIMARY KEY,
    NumeroPassaporte VARCHAR(20) NOT NULL,
    DataExpedicao DATE,
    DataValidade DATE,
    CPF_Passageiro VARCHAR(11),
    FOREIGN KEY (CPF_Passageiro) REFERENCES Passageiro(CPF)
);

-- Criação da tabela de relacionamento entre Passageiro e Voo
CREATE TABLE PassageiroVoo (
    CPF_Passageiro VARCHAR(11),
    VooID INT,
    PRIMARY KEY (CPF_Passageiro, VooID),
    FOREIGN KEY (CPF_Passageiro) REFERENCES Passageiro(CPF),
    FOREIGN KEY (VooID) REFERENCES Voo(VooID)
);

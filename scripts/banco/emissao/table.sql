CREATE TABLE emissao (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    pnr VARCHAR(100) UNIQUE NOT NULL,

    id_funcionario UUID NOT NULL,
    FOREIGN KEY (id_funcionario) REFERENCES funcionario(id),

    id_conta UUID NOT NULL,
    FOREIGN KEY (id_conta) REFERENCES conta(id),

    iata_origem VARCHAR(3) NOT NULL,
    FOREIGN KEY (iata_origem) REFERENCES aeroporto(codigo_iata),

    iata_destino VARCHAR(3) NOT NULL,
    FOREIGN KEY (iata_destino) REFERENCES aeroporto(codigo_iata),

    passageiro_principal VARCHAR(100) NOT NULL,
    data_emissao TIMESTAMP NOT NULL,
    data_voo TIMESTAMP NOT NULL,
    valor_milheiro INT NOT NULL,
    pontos_utilizados INT NOT NULL,
    taxas INT NOT NULL,
    ativo BOOLEAN DEFAULT TRUE,

    CHECK (valor_milheiro >= 0),
    CHECK (pontos_utilizados >= 0),
    CHECK (taxas >= 0)
);

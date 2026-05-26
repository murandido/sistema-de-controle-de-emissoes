CREATE TABLE emissao(
    id_emissao UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    pnr VARCHAR(100) UNIQUE,
    id_funcionario UUID DEFAULT gen_random_uuid(),
    id_conta UUID DEFAULT gen_random_uuid(),
    iata_origem VARCHAR(100),
    iata_destino VARCHAR(100),
    passageiro_principal VARCHAR(100),
    data_emissao TIMESTAMP,
    data_voo TIMESTAMP,
    valor_milheiro INT,
    pontos_utilizados INT,
    taxas INT,
    ativo BOOLEAN

)
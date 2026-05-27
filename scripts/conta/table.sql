CREATE TABLE conta (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    nome VARCHAR(100) UNIQUE NOT NULL,
    programa_fidelidade VARCHAR(100) NOT NULL,
    saldo_pontos INT NOT NULL,
    ativo BOOLEAN DEFAULT TRUE,
    CHECK (saldo_pontos >= 0)
);

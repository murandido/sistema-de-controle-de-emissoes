CREATE TABLE conta(
    id_conta UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    nome_conta VARCHAR(100) UNIQUE,
    programa_fidelidade VARCHAR(100),
    saldo_pontos INT CHECK(saldo_pontos >= 0),
    ativo BOOLEAN
)
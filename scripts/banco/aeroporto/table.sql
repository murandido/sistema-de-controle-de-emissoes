CREATE TABLE aeroporto (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    codigo_iata VARCHAR(3) UNIQUE NOT NULL,
    nome VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    pais VARCHAR(100) NOT NULL
);

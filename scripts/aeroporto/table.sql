CREATE TABLE aeroporto(
    id_aeroporto UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    codigo_iata INT UNIQUE,
    nome VARCHAR(100),
    cidade VARCHAR(100),
    pais VARCHAR(100)
);
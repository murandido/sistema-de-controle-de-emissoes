CREATE TABLE funcionario(
    id_funcionario UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    ativo BOOLEAN

)
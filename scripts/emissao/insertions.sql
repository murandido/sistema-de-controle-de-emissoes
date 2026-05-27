INSERT INTO emissao (
    pnr,
    id_funcionario,
    id_conta,
    iata_origem,
    iata_destino,
    passageiro_principal,
    data_emissao,
    data_voo,
    valor_milheiro,
    pontos_utilizados,
    taxas
) VALUES
(
    'ABC123',
    (SELECT id FROM funcionario WHERE email = 'joao.silva@empresa.com'),
    (SELECT id FROM conta WHERE nome = 'Felipe Andrade'),
    'GRU',
    'JFK',
    'Pedro Alves',
    '2023-10-01 10:00:00',
    '2023-12-15 22:30:00',
    25,
    50000,
    350
),
(
    'DEF456',
    (SELECT id FROM funcionario WHERE email = 'maria.oliveira@empresa.com'),
    (SELECT id FROM conta WHERE nome = 'Mariana Costa'),
    'JFK',
    'CDG',
    'Ana Costa',
    '2023-10-05 14:20:00',
    '2024-01-10 18:00:00',
    30,
    75000,
    420
),
(
    'GHI789',
    (SELECT id FROM funcionario WHERE email = 'carlos.souza@empresa.com'),
    (SELECT id FROM conta WHERE nome = 'Rodrigo Souza'),
    'CDG',
    'GRU',
    'Lucas Martins',
    '2023-10-10 09:15:00',
    '2024-02-20 20:45:00',
    28,
    60000,
    380
);
BEGIN TRANSACTION;

INSERT INTO funcionario (nome, email, ativo) VALUES
    ('Pedro Henrique Alves', 'pedro.henrique.alves@empresa.com', TRUE),
    ('Isabela Martins Correia', 'isabela.martins.correia@empresa.com', TRUE),
    ('Rafael Cunha Nogueira', 'rafael.cunha.nogueira@empresa.com', FALSE);

INSERT INTO conta (nome, programa_fidelidade, saldo_pontos, ativo) VALUES
    ('Pedro Henrique Alves', 'Smiles', 150000, TRUE),
    ('Isabela Martins Correia', 'Latam Pass', 320000, TRUE),
    ('Rafael Cunha Nogueira', 'TudoAzul', 0, FALSE);

COMMIT;

--------------------------------------------------------------------------------------------------

BEGIN TRANSACTION;

UPDATE conta
SET programa_fidelidade = 'Livelo', saldo_pontos = 0
WHERE nome = 'Lucas Gomes Alves';

UPDATE conta
SET saldo_pontos = 676767
WHERE nome = 'Mariana Rodrigues Souza';

UPDATE conta
SET programa_fidelidade = 'Livelo', saldo_pontos = 0, ativo = TRUE
WHERE nome = 'Beatriz Barbosa Soares';

UPDATE conta
SET programa_fidelidade = 'Smiles', saldo_pontos = 0, ativo = TRUE
WHERE nome = 'Maria Pereira Gomes';

UPDATE conta
SET saldo_pontos = 8942631
WHERE nome = 'João Souza Ribeiro';

UPDATE conta
SET saldo_pontos = 65412, ativo = FALSE
WHERE nome = 'Maria Pereira Vieira';

UPDATE conta
SET ativo = FALSE
WHERE nome = 'Julia Lima Almeida';

COMMIT;

--------------------------------------------------------------------------------------------------

BEGIN TRANSACTION;

UPDATE funcionario
SET ativo = FALSE
WHERE email = 'camila.ribeiro.barbosa@empresa.com';

UPDATE funcionario
SET ativo = FALSE
WHERE email = 'bruna.lima.oliveira@empresa.com';

UPDATE funcionario
SET ativo = FALSE
WHERE email = 'carlos.oliveira.lopes@empresa.com';

UPDATE funcionario
SET ativo = TRUE
WHERE email = 'ricardo.rodrigues.fernandes@empresa.com';

ROLLBACK;

SELECT * FROM funcionario 
WHERE email IN (
    'camila.ribeiro.barbosa@empresa.com',
    'bruna.lima.oliveira@empresa.com',
    'carlos.oliveira.lopes@empresa.com',
    'ricardo.rodrigues.fernandes@empresa.com'
);

--------------------------------------------------------------------------------------------------

BEGIN TRANSACTION;

UPDATE emissao
SET passageiro_principal = 'Joana Rodrigues Max', pontos_utilizados = 35131
WHERE pnr = 'RKQ4SV';

UPDATE emissao
SET iata_origem = 'PTY', iata_destino = 'BSB', passageiro_principal = 'Max Emilian Verstappen',
data_emissao = '2026-06-13 11:26:38', data_voo = '2026-08-16 16:00:00', valor_milheiro = 3000,
pontos_utilizados = 35085, taxas = 12000, ativo = TRUE
WHERE pnr = 'TMY4GP';

UPDATE emissao
SET iata_origem = 'BEL', iata_destino = 'SSA', passageiro_principal = 'Cristiano Ronaldo dos Santos Aveiro',
data_emissao = '2026-05-17 12:44:13', data_voo = '2026-06-25 21:00:00'
WHERE pnr = '8IY3X8';

UPDATE emissao
SET passageiro_principal = 'Walter Hartwell White', pontos_utilizados = 60000
WHERE pnr = 'Q3QA3S';

UPDATE emissao
SET passageiro_principal = 'Jesse Bruce Pinkman', pontos_utilizados = 60000
WHERE pnr = 'R21520';

UPDATE emissao
SET passageiro_principal = 'James Morgan McGill', pontos_utilizados = 30000
WHERE pnr = '4EFFF1';

UPDATE emissao
SET passageiro_principal = 'Gustavo Fring', pontos_utilizados = 40000
WHERE pnr = '1DSTWG';

UPDATE emissao
SET passageiro_principal = 'Henry R. Schrader', pontos_utilizados = 20000
WHERE pnr = 'XHRO19';

ROLLBACK;

SELECT * FROM emissao 
WHERE pnr IN ('RKQ4SV','TMY4GP','8IY3X8');

SELECT * FROM emissao 
WHERE pnr IN ('Q3QA3S','R21520','4EFFF1','1DSTWG','XHRO19');

--------------------------------------------------------------------------------------------------

BEGIN TRANSACTION;

UPDATE emissao
SET iata_origem = 'PTY', iata_destino = 'BSB', passageiro_principal = 'Lionel Andrés Messi Cuccittini',
data_emissao = '2026-04-19 18:20:38', data_voo = '2026-09-11 19:30:00', valor_milheiro = 5000,
pontos_utilizados = 32385, taxas = 18000, ativo = TRUE
WHERE pnr = '0VUGKV';

UPDATE emissao
SET iata_origem = 'BEL', iata_destino = 'SSA', passageiro_principal = 'Ash Ketchum',
data_emissao = '2026-06-06 13:46:16', data_voo = '2026-06-25 06:00:00'
WHERE pnr = '8IY3X8';

SELECT * FROM emissao 
WHERE pnr IN ('0VUGKV','8IY3X8');

UPDATE emissao
SET passageiro_principal = 'Obi-Wan Kenobi', pontos_utilizados = 60000
WHERE pnr = 'NR9IS2';

UPDATE emissao
SET passageiro_principal = 'Anakin Skywalker', pontos_utilizados = 60000
WHERE pnr = 'QVZFV8';

UPDATE emissao
SET passageiro_principal = 'Luke Skywalker', pontos_utilizados = 30000
WHERE pnr = 'SOF1GG';

UPDATE emissao
SET passageiro_principal = 'Han Solo', pontos_utilizados = 40000
WHERE pnr = '1JP70L';

UPDATE emissao
SET passageiro_principal = 'Leia Organa', pontos_utilizados = 20000
WHERE pnr = 'TMY4GP';

SELECT * FROM emissao
WHERE pnr IN ('NR9IS2','QVZFV8','SOF1GG','1JP70L','TMY4GP');

COMMIT;

--------------------------------------------------------------------------------------------------

BEGIN TRANSACTION;

DELETE FROM emissao WHERE pnr IN ('BRCL47', 'UHZ6A8', 'D5SOWO');

SAVEPOINT sp1;

DELETE FROM emissao WHERE pnr IN ('CT2CXI', 'AQ8H3X', '9UOE3T');

SAVEPOINT sp2;

-- Lote a ser desfeito
DELETE FROM emissao WHERE pnr IN ('RCXN22', 'H3FNBD', 'JARJI8');

ROLLBACK TO sp2;

COMMIT;
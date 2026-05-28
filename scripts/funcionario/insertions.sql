INSERT INTO funcionario (nome, email, ativo) VALUES
('Julia Lima Soares', 'julia.lima.soares@empresa.com', TRUE),
('Diego Barbosa Almeida', 'diego.barbosa.almeida@empresa.com', TRUE),
('Bruna Costa Santos', 'bruna.costa.santos@empresa.com', TRUE),
('Ricardo Rodrigues Fernandes', 'ricardo.rodrigues.fernandes@empresa.com', FALSE),
('Camila Soares Martins', 'camila.soares.martins@empresa.com', TRUE),
('Diego Pereira Rodrigues', 'diego.pereira.rodrigues@empresa.com', TRUE),
('Pedro Almeida Soares', 'pedro.almeida.soares@empresa.com', TRUE),
('Bruna Lima Oliveira', 'bruna.lima.oliveira@empresa.com', TRUE),
('Lucas Fernandes Alves', 'lucas.fernandes.alves@empresa.com', TRUE),
('Lucas Soares Lima', 'lucas.soares.lima@empresa.com', TRUE),
('Amanda Souza Martins', 'amanda.souza.martins@empresa.com', TRUE),
('Beatriz Lopes Lopes', 'beatriz.lopes.lopes@empresa.com', TRUE),
('Beatriz Martins Ferreira', 'beatriz.martins.ferreira@empresa.com', TRUE),
('Bruna Lima Soares', 'bruna.lima.soares@empresa.com', TRUE),
('Camila Ribeiro Alves', 'camila.ribeiro.alves@empresa.com', TRUE),
('Amanda Rodrigues Vieira', 'amanda.rodrigues.vieira@empresa.com', TRUE),
('Carlos Santos Costa', 'carlos.santos.costa@empresa.com', TRUE),
('Aline Fernandes Souza', 'aline.fernandes.souza@empresa.com', TRUE),
('Felipe Souza Souza', 'felipe.souza.souza@empresa.com', TRUE),
('Fernanda Fernandes Rodrigues', 'fernanda.fernandes.rodrigues@empresa.com', TRUE),
('Amanda Rodrigues Alves', 'amanda.rodrigues.alves@empresa.com', TRUE),
('Camila Ribeiro Barbosa', 'camila.ribeiro.barbosa@empresa.com', TRUE),
('Mateus Costa Souza', 'mateus.costa.souza@empresa.com', TRUE),
('Carlos Oliveira Lopes', 'carlos.oliveira.lopes@empresa.com', TRUE),
('Carlos Soares Pereira', 'carlos.soares.pereira@empresa.com', TRUE),
('Felipe Santos Almeida', 'felipe.santos.almeida@empresa.com', TRUE),
('Lucas Alves Fernandes', 'lucas.alves.fernandes@empresa.com', TRUE),
('Gustavo Martins Lima', 'gustavo.martins.lima@empresa.com', TRUE),
('Felipe Martins Rodrigues', 'felipe.martins.rodrigues@empresa.com', TRUE),
('Felipe Gomes Barbosa', 'felipe.gomes.barbosa@empresa.com', TRUE),
('Bruna Fernandes Costa', 'bruna.fernandes.costa@empresa.com', TRUE),
('Camila Carvalho Oliveira', 'camila.carvalho.oliveira@empresa.com', TRUE),
('Rafael Soares Ferreira', 'rafael.soares.ferreira@empresa.com', TRUE),
('Mariana Alves Almeida', 'mariana.alves.almeida@empresa.com', TRUE),
('Lucas Vieira Costa', 'lucas.vieira.costa@empresa.com', TRUE),
('Camila Pereira Rodrigues', 'camila.pereira.rodrigues@empresa.com', TRUE),
('Bruno Lopes Pereira', 'bruno.lopes.pereira@empresa.com', TRUE),
('Bruna Fernandes Gomes', 'bruna.fernandes.gomes@empresa.com', TRUE),
('Bruna Lopes Fernandes', 'bruna.lopes.fernandes@empresa.com', TRUE),
('Ricardo Pereira Ribeiro', 'ricardo.pereira.ribeiro@empresa.com', TRUE),
('Lucas Pereira Souza', 'lucas.pereira.souza@empresa.com', TRUE),
('Aline Pereira Lima', 'aline.pereira.lima@empresa.com', TRUE),
('Rodrigo Oliveira Silva', 'rodrigo.oliveira.silva@empresa.com', TRUE),
('Maria Martins Costa', 'maria.martins.costa@empresa.com', TRUE),
('Carlos Martins Souza', 'carlos.martins.souza@empresa.com', TRUE),
('Fernanda Fernandes Fernandes', 'fernanda.fernandes.fernandes@empresa.com', TRUE),
('Rafael Gomes Carvalho', 'rafael.gomes.carvalho@empresa.com', TRUE),
('Carlos Pereira Gomes', 'carlos.pereira.gomes@empresa.com', FALSE),
('André Barbosa Ribeiro', 'andré.barbosa.ribeiro@empresa.com', TRUE),
('Mateus Carvalho Pereira', 'mateus.carvalho.pereira@empresa.com', TRUE);

-- inserts com erros propositais

INSERT INTO funcionario (email) VALUES ('sem.nome@empresa.com');

INSERT INTO funcionario (nome) VALUES ('Funcionario Sem Email');

INSERT INTO funcionario (nome, email) VALUES (NULL, 'nulo@empresa.com');

INSERT INTO funcionario (nome, email) VALUES ('Zé Ninguem', NULL);

INSERT INTO funcionario (id, nome, email) VALUES (NULL, 'PK Nula', 'pk@empresa.com');

INSERT INTO funcionario (id, nome, email) VALUES ('123-abc-nao-eh-uuid', 'UUID Invalido', 'uuid@empresa.com');

INSERT INTO funcionario (nome, email, ativo) VALUES ('Falta Valor', 'falta@empresa.com');

INSERT INTO funcionario (nome, email) VALUES ('Cópia', 'joao.silva@empresa.com');

INSERT INTO funcionario (nome, email, ativo) VALUES ('Ativo Texto', 'texto@empresa.com', 'sim');

INSERT INTO funcionario (ativo) VALUES (TRUE);

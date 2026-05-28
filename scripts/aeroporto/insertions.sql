INSERT INTO aeroporto (codigo_iata, nome, cidade, pais) VALUES
('GRU', 'Aeroporto Internacional de Guarulhos', 'São Paulo', 'Brasil'),
('GIG', 'Aeroporto Internacional do Galeão', 'Rio de Janeiro', 'Brasil'),
('BSB', 'Aeroporto Internacional de Brasília', 'Brasília', 'Brasil'),
('CGH', 'Aeroporto de Congonhas', 'São Paulo', 'Brasil'),
('SDU', 'Aeroporto Santos Dumont', 'Rio de Janeiro', 'Brasil'),
('CNF', 'Aeroporto Internacional de Confins', 'Belo Horizonte', 'Brasil'),
('VCP', 'Aeroporto Internacional de Viracopos', 'Campinas', 'Brasil'),
('REC', 'Aeroporto Internacional do Recife', 'Recife', 'Brasil'),
('SSA', 'Aeroporto Internacional de Salvador', 'Salvador', 'Brasil'),
('POA', 'Aeroporto Internacional de Porto Alegre', 'Porto Alegre', 'Brasil'),
('FOR', 'Aeroporto Internacional de Fortaleza', 'Fortaleza', 'Brasil'),
('CWB', 'Aeroporto Internacional de Curitiba', 'Curitiba', 'Brasil'),
('FLN', 'Aeroporto Internacional de Florianópolis', 'Florianópolis', 'Brasil'),
('BEL', 'Aeroporto Internacional de Belém', 'Belém', 'Brasil'),
('MAO', 'Aeroporto Internacional de Manaus', 'Manaus', 'Brasil'),
('CGB', 'Aeroporto Internacional de Cuiabá', 'Cuiabá', 'Brasil'),
('NAT', 'Aeroporto Internacional de Natal', 'Natal', 'Brasil'),
('MCZ', 'Aeroporto Internacional de Maceió', 'Maceió', 'Brasil'),
('IGU', 'Aeroporto Internacional de Foz do Iguaçu', 'Foz do Iguaçu', 'Brasil'),
('VIX', 'Aeroporto Internacional de Vitória', 'Vitória', 'Brasil'),
('JFK', 'John F. Kennedy International Airport', 'Nova York', 'Estados Unidos'),
('LAX', 'Los Angeles International Airport', 'Los Angeles', 'Estados Unidos'),
('ORD', 'OHare International Airport', 'Chicago', 'Estados Unidos'),
('DFW', 'Dallas/Fort Worth International Airport', 'Dallas', 'Estados Unidos'),
('ATL', 'Hartsfield-Jackson Atlanta International Airport', 'Atlanta', 'Estados Unidos'),
('MIA', 'Miami International Airport', 'Miami', 'Estados Unidos'),
('LHR', 'Heathrow Airport', 'Londres', 'Reino Unido'),
('CDG', 'Charles de Gaulle Airport', 'Paris', 'França'),
('FRA', 'Frankfurt Airport', 'Frankfurt', 'Alemanha'),
('AMS', 'Amsterdam Airport Schiphol', 'Amsterdã', 'Países Baixos'),
('MAD', 'Adolfo Suárez Madrid-Barajas Airport', 'Madri', 'Espanha'),
('FCO', 'Leonardo da Vinci-Fiumicino Airport', 'Roma', 'Itália'),
('DXB', 'Dubai International Airport', 'Dubai', 'Emirados Árabes Unidos'),
('SIN', 'Singapore Changi Airport', 'Singapura', 'Singapura'),
('HND', 'Haneda Airport', 'Tóquio', 'Japão'),
('NRT', 'Narita International Airport', 'Tóquio', 'Japão'),
('SYD', 'Sydney Airport', 'Sydney', 'Austrália'),
('YYZ', 'Toronto Pearson International Airport', 'Toronto', 'Canadá'),
('MEX', 'Aeropuerto Internacional de la Ciudad de México', 'Cidade do México', 'México'),
('EZE', 'Aeropuerto Internacional Ministro Pistarini', 'Buenos Aires', 'Argentina'),
('LIM', 'Aeropuerto Internacional Jorge Chávez', 'Lima', 'Peru'),
('SCL', 'Aeropuerto Internacional Arturo Merino Benítez', 'Santiago', 'Chile'),
('BOG', 'Aeropuerto Internacional El Dorado', 'Bogotá', 'Colômbia'),
('PTY', 'Aeropuerto Internacional de Tocumen', 'Cidade do Panamá', 'Panamá'),
('MVD', 'Aeropuerto Internacional de Carrasco', 'Montevidéu', 'Uruguai'),
('ASU', 'Aeropuerto Internacional Silvio Pettirossi', 'Assunção', 'Paraguai'),
('CUN', 'Aeropuerto Internacional de Cancún', 'Cancún', 'México'),
('ORY', 'Paris Orly Airport', 'Paris', 'França'),
('LGW', 'Gatwick Airport', 'Londres', 'Reino Unido'),
('BCN', 'Josep Tarradellas Barcelona-El Prat Airport', 'Barcelona', 'Espanha');

-- insercoes com erros propositais

INSERT INTO aeroporto (nome, cidade, pais) VALUES ('Aeroporto Falso', 'São Paulo', 'Brasil');

INSERT INTO aeroporto (codigo_iata, cidade, pais) VALUES ('ABC', 'Rio de Janeiro', 'Brasil');

INSERT INTO aeroporto (codigo_iata, nome, pais) VALUES ('DEF', 'Aeroporto Teste', 'Brasil');

INSERT INTO aeroporto (codigo_iata, nome, cidade) VALUES ('GHI', 'Aeroporto Incompleto', 'Curitiba');

INSERT INTO aeroporto (codigo_iata, nome, cidade, pais) VALUES (NULL, 'Aero Nulo', 'Belo Horizonte', 'Brasil');

INSERT INTO aeroporto (codigo_iata, nome, cidade, pais) VALUES ('ABCD', 'Aeroporto Letras Demais', 'Campinas', 'Brasil');

INSERT INTO aeroporto (codigo_iata, nome, cidade, pais) VALUES ('GRU', 'Outro Guarulhos', 'Guarulhos', 'Brasil');

INSERT INTO aeroporto VALUES ('ZZZ', 'Aeroporto Sem Colunas');

INSERT INTO aeroporto (codigo_iata, nome, cidade, pais) VALUES ('XYZ', NULL, 'Brasília', 'Brasil');

INSERT INTO aeroporto (codigo_iata, nome) VALUES ('WXY', 'Aeroporto Quase Lá');

-- Inserindo Voluntários
INSERT INTO VOLUNTARIO (id_voluntario, nome, cpf, email, telefone) VALUES
(1, 'João Silva', '123.456.789-00', 'joao@email.com', '(11) 99999-0001'),
(2, 'Maria Oliveira', '234.567.890-11', 'maria@email.com', '(11) 99999-0002'),
(3, 'Carlos Souza', '345.678.901-22', 'carlos@email.com', '(11) 99999-0003');

-- Inserindo Projetos
INSERT INTO PROJETO (id_projeto, titulo, descricao, data_inicio, data_fim) VALUES
(1, 'Horta Comunitária', 'Plantio de vegetais para a comunidade', '2024-01-10', '2024-12-20'),
(2, 'Reforço Escolar', 'Aulas de matemática para jovens', '2024-02-01', '2024-11-30'),
(3, 'Campanha do Agasalho', 'Arrecadação de roupas de inverno', '2024-05-01', '2024-08-01');

-- Inserindo Doadores
INSERT INTO DOADOR (id_doador, nome, cpf_cnpj, email) VALUES
(1, 'Empresa Tech Solutions', '12.345.678/0001-90', 'contato@tech.com'),
(2, 'Ana Pereira', '987.654.321-00', 'ana.pereira@email.com');

-- Inserindo Doações
INSERT INTO DOACAO (id_doacao, data, valor, id_doador, id_projeto) VALUES
(1, '2024-03-15', 500.00, 2, 1), -- Ana doou para Horta
(2, '2024-03-20', 2000.00, 1, 2), -- Empresa doou para Reforço
(3, '2024-04-10', 150.00, 2, 3); -- Ana doou para Agasalho

-- Inserindo Alocações (Voluntários nos Projetos)
INSERT INTO ALOCACAO (id_alocacao, id_voluntario, id_projeto, data_entrada, horas_trabalhadas) VALUES
(1, 1, 1, '2024-01-15', 20), -- João na Horta
(2, 2, 2, '2024-02-05', 15), -- Maria no Reforço
(3, 3, 1, '2024-01-20', 10), -- Carlos na Horta
(4, 1, 3, '2024-05-05', 5);  -- João também no Agasalho
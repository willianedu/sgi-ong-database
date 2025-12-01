-- --- UPDATES ---

-- 1. Atualizar o telefone de um voluntário específico
UPDATE VOLUNTARIO
SET telefone = '(11) 98888-7777'
WHERE id_voluntario = 1;

-- 2. Aumentar as horas trabalhadas em uma alocação específica
UPDATE ALOCACAO
SET horas_trabalhadas = 25
WHERE id_alocacao = 1;

-- 3. Corrigir o valor de uma doação
UPDATE DOACAO
SET valor = 600.00
WHERE id_doacao = 1;


-- --- DELETES ---

-- 1. Remover uma alocação específica (Voluntário saiu do projeto)
DELETE FROM ALOCACAO
WHERE id_alocacao = 4;

-- 2. Remover doações muito antigas (Exemplo hipotético)
DELETE FROM DOACAO
WHERE data < '2023-01-01';

-- 3. Remover um projeto que foi cancelado (Cuidado: só funciona se não tiver filhos, ou usar cascade)
-- Neste cenário, removemos um projeto específico que sabemos estar vazio ou limpamos dependências antes
DELETE FROM PROJETO
WHERE id_projeto = 3;
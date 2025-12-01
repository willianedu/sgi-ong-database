-- 1. Listar nome do voluntário e o projeto em que atua (JOIN)
SELECT V.nome AS Voluntario, P.titulo AS Projeto
FROM VOLUNTARIO V
JOIN ALOCACAO A ON V.id_voluntario = A.id_voluntario
JOIN PROJETO P ON A.id_projeto = P.id_projeto;

-- 2. Listar todas as doações acima de R$ 200,00 ordenadas pela data (WHERE, ORDER BY)
SELECT data, valor
FROM DOACAO
WHERE valor > 200.00
ORDER BY data DESC;

-- 3. Calcular o total de horas trabalhadas por projeto (GROUP BY, SUM)
SELECT P.titulo, SUM(A.horas_trabalhadas) AS Total_Horas
FROM PROJETO P
JOIN ALOCACAO A ON P.id_projeto = A.id_projeto
GROUP BY P.titulo;

-- 4. Mostrar os dados de contato dos doadores (LIMIT)
SELECT nome, email
FROM DOADOR
LIMIT 5;
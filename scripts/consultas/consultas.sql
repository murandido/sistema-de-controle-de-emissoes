--  INNER JOIN: emissões com funcionário e conta.

SELECT e.pnr,
       f.nome   AS atendente,
       c.nome   AS titular,
       c.programa_fidelidade,
       e.pontos_utilizados
FROM emissao e
INNER JOIN funcionario f ON f.id = e.id_funcionario
INNER JOIN conta       c ON c.id = e.id_conta
WHERE e.ativo = TRUE;

-- LEFT JOIN: funcionários sem nenhuma emissão.

SELECT f.nome,
       f.email,
       COUNT(e.id) AS total_emissoes
FROM funcionario f
LEFT JOIN emissao e ON e.id_funcionario = f.id
GROUP BY f.id, f.nome, f.email
HAVING COUNT(e.id) = 0;

-- RIGHT JOIN: contas sem nenhuma emissão associada.

SELECT c.nome,
       c.programa_fidelidade,
       c.saldo_pontos,
       e.id AS emissao_id
FROM emissao e
RIGHT JOIN conta c ON c.id = e.id_conta
WHERE e.id IS NULL;

-- GROUP BY + HAVING: programas com média acima de 200k pontos.

SELECT programa_fidelidade,
       COUNT(*)                    AS total_contas,
       ROUND(AVG(saldo_pontos), 0) AS media_pontos,
       MAX(saldo_pontos)           AS maior_saldo,
       MIN(saldo_pontos)           AS menor_saldo
FROM conta
WHERE ativo = TRUE
GROUP BY programa_fidelidade
HAVING AVG(saldo_pontos) > 200000
ORDER BY media_pontos DESC;

--Subquery: clientes acima da média do próprio programa

SELECT c.nome,
       c.programa_fidelidade,
       c.saldo_pontos,
       c.saldo_pontos - ROUND(m.media, 0) AS acima_da_media
FROM conta c
JOIN (
    SELECT programa_fidelidade,
           AVG(saldo_pontos) AS media
    FROM conta
    WHERE ativo = TRUE
    GROUP BY programa_fidelidade
) AS m USING (programa_fidelidade)
WHERE c.ativo = TRUE
  AND c.saldo_pontos > m.media
ORDER BY acima_da_media DESC;


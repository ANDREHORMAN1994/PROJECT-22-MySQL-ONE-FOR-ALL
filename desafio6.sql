CREATE VIEW faturamento_atual AS
    SELECT 
        ROUND(MIN(t1.valor), 2) AS faturamento_minimo,
        ROUND(MAX(t1.valor), 2) AS faturamento_maximo,
        ROUND(AVG(t1.valor), 2) AS faturamento_medio,
        ROUND(SUM(t1.valor), 2) AS faturamento_total
    FROM
        SpotifyClone.plano AS t1
            INNER JOIN
        SpotifyClone.usuario AS t2 ON t1.plano_id = t2.plano_id;

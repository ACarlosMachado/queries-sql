SELECT
 MIN(i.valor) AS faturamento_minimo,
 MAX(i.valor) AS faturamento_maximo,
 ROUND(AVG(i.valor),2) AS faturamento_medio,
 ROUND(SUM(i.valor),2) AS faturamento_total
 FROM SpotifyClone.informacoes_assinatura i;
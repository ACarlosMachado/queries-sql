SELECT
     u.nome_usuario AS usuario,
     COUNT(h.musica_id) AS qtde_musicas_ouvidas,
     ROUND((SUM(m.duracao_segundo) / 60),2) AS total_minutos
FROM SpotifyClone.usuario u
INNER JOIN SpotifyClone.historico_exibicoes h ON u.usuario_id = h.usuario_id
INNER JOIN SpotifyClone.musicas m ON h.musica_id = m.musica_id
GROUP BY (u.nome_usuario)
ORDER BY u.nome_usuario;

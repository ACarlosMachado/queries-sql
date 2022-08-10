SELECT m.nome_musica AS nome,
COUNT(h.musica_id) AS reproducoes
FROM SpotifyClone.musicas m
INNER JOIN SpotifyClone.historico_exibicoes h
ON m.musica_id = h.musica_id
INNER JOIN SpotifyClone.usuario u
ON u.usuario_id = h.usuario_id
INNER JOIN SpotifyClone.plano p
ON u.plano_id = p.plano_id
WHERE p.plano_nome = 'gratuito' OR p.plano_nome = 'pessoal'
GROUP BY (m.nome_musica)
ORDER BY m.nome_musica;
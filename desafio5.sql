SELECT m.nome_musica AS cancao, COUNT(h.musica_id) AS reproducoes
FROM SpotifyClone.musicas m
INNER JOIN SpotifyClone.historico_exibicoes h
ON m.musica_id = h.musica_id
GROUP BY (m.nome_musica)
ORDER BY COUNT(h.musica_id) DESC, m.nome_musica 
LIMIT 2;
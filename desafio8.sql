SELECT art.nome_artista AS artista,
al.nome_album AS album
FROM SpotifyClone.artistas art
INNER JOIN SpotifyClone.album al
ON al.artista_id = art.artista_id
WHERE art.nome_artista = "Walter Phoenix"
ORDER BY art.nome_artista;
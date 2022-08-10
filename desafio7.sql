SELECT
 art.nome_artista AS artista,
 al.nome_album AS album,
 COUNT(s.artista_id) AS seguidores
 FROM SpotifyClone.artistas art
 INNER JOIN SpotifyClone.album al ON art.artista_id = al.artista_id
 INNER JOIN SpotifyClone.seguindo_artista s ON art.artista_id = al.artista_id
 GROUP BY (art.nome_artista, al.nome_album, s.artista_id)
 ORDER BY ;
 SELECT 
 (SELECT COUNT(m.musica_id)  FROM SpotifyClone.musicas m) AS cancoes,
 (SELECT COUNT(artistas.artista_id)  FROM SpotifyClone.artistas artistas) AS artistas,
 (SELECT COUNT(a.album_id) FROM SpotifyClone.album a) AS albuns;
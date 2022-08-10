SELECT m.nome_musica AS nome_musica,
CASE
        WHEN m.nome_musica LIKE '%Streets%' THEN REPLACE('Without My Streets','Streets', 'Code Review')
        WHEN m.nome_musica LIKE '%Her Own%' THEN REPLACE('Dance With Her Own','Her Own', 'Trybe')
        WHEN m.nome_musica LIKE '%Inner Fire%' THEN REPLACE('Troubles Of My Inner Fire','Inner Fire', 'Project')
        WHEN m.nome_musica LIKE '%Silly%' THEN REPLACE("Let's Be Silly",'Silly', 'Nice')
        WHEN m.nome_musica LIKE '%Circus%' THEN REPLACE('Magic Circus','Circus', 'Pull Request')
    END AS novo_nome
FROM SpotifyClone.musicas m
WHERE m.nome_musica LIKE '%Streets%'
   OR m.nome_musica LIKE '%Her Own%'
   OR m.nome_musica LIKE '%Inner Fire%'
   OR m.nome_musica LIKE '%Silly%'
   OR m.nome_musica LIKE '%Circus%'
   ORDER BY m.nome_musica;
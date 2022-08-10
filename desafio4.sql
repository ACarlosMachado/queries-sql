SELECT DISTINCT u.nome_usuario AS usuario, IF(MAX(YEAR(h.data_reproducao)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.historico_exibicoes h
inner join SpotifyClone.usuario u ON u.usuario_id = h.usuario_id
GROUP BY(u.nome_usuario)
ORDER BY u.nome_usuario;
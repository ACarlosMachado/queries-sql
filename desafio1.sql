DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.plano(
    plano_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    plano_nome  VARCHAR(30) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.usuario(
    usuario_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_usuario VARCHAR(30) NOT NULL,
    idade_usuario INT,
    plano_id INT,
    FOREIGN KEY (plano_id) REFERENCES plano (plano_id)
) engine = InnoDB;


CREATE TABLE SpotifyClone.informacoes_assinatura(
    assinatura_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    usuario_id INTEGER,
    plano_id  INTEGER,
    valor DECIMAL(5,2) NOT NULL,
    data_assinatura DATE NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id),
    FOREIGN KEY (plano_id) REFERENCES plano (plano_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.artistas(
    artista_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_artista VARCHAR(20) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.seguindo_artista(
    seguindo_artista_id INT NOT NULL,
    artista_id INTEGER,
    usuario_id INTEGER,
    CONSTRAINT PRIMARY KEY(artista_id, usuario_id),
    FOREIGN KEY (artista_id) REFERENCES artistas (artista_id),
    FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.album(
    album_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_album VARCHAR(50) NOT NULL,
    ano_lancamento YEAR NOT NULL,
    artista_id INT,
    FOREIGN KEY (artista_id) REFERENCES artistas (artista_id)
) engine = InnoDB;


CREATE TABLE SpotifyClone.musicas(
    musica_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_musica VARCHAR(50) NOT NULL,
    duracao_segundo INT NOT NULL,
    album_id INTEGER,
    FOREIGN KEY (album_id) REFERENCES album (album_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.historico_exibicoes(
    exibicao_id INT NOT NULL,
    usuario_id INTEGER,
    musica_id INTEGER NOT NULL,
    data_reproducao DATETIME NOT NULL,
    CONSTRAINT PRIMARY KEY(musica_id, usuario_id),
    FOREIGN KEY (musica_id) REFERENCES musicas (musica_id),
    FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id)
) engine = InnoDB;

  INSERT INTO SpotifyClone.plano (plano_nome)
VALUES
 ('gratuito'),
 ('familiar'),
 ('universitário'),
 ('pessoal');


INSERT INTO SpotifyClone.usuario (nome_usuario, idade_usuario, plano_id)
VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 2),
  ('Bill', 20, 3),
  ('Roger', 45, 4),
  ('Norman', 58, 4),
  ('Patrick', 33, 2),
  ('Vivian', 26, 3),
  ('Carol', 19, 3),
  ('Angelina', 42, 2),
  ('Paul', 46, 2);


INSERT INTO SpotifyClone.informacoes_assinatura (usuario_id, plano_id, valor, data_assinatura)
VALUES
  (1, 1, 0, '2019-10-20'),
  (2, 2, 7.99, '2017-12-30'),
  (3, 3, 5.99, '2019-06-05'),
  (4, 4, 6.99, '2020-05-13'),
  (5, 4, 6.99, '2017-02-17'),
  (6, 2, 7.99, '2017-01-06'),
  (7, 3, 5.99, '2018-01-05'),
  (8, 3, 5.99, '2018-02-14'),
  (9, 2, 7.99, '2018-04-29'),
  (10, 2, 7.99, '2017-01-17');

  INSERT INTO SpotifyClone.artistas (nome_artista)
VALUES
  ('Walter Phoenix'),   
  ('Peter Strong'),     
  ('Lance Day'),        
  ('Freedie Shannon'),  
  ('Tyler Isle'),       
  ('Fog');              

  INSERT INTO SpotifyClone.seguindo_artista (seguindo_artista_id, usuario_id, artista_id)
VALUES
  (1, 1, 1),
  (2, 1, 4),
  (3, 1, 3),
  (4, 2, 1),
  (5, 2, 3),
  (6, 3, 2),
  (7, 3, 1),
  (8, 4, 4),
  (9, 5, 5),
  (10, 5, 6),
  (11, 6, 6),
  (12, 6, 3),
  (13, 6, 1),
  (14, 7, 2),
  (15, 7, 5),
  (16, 8, 1),
  (17, 8, 5),
  (18, 9, 6),
  (19, 9, 4),
  (20, 9, 3),
  (21, 10, 2),
  (22, 10, 6);

INSERT INTO SpotifyClone.album (nome_album, ano_lancamento, artista_id)
VALUES
('Envious', 1990, 1),                   
('Exuberant', 1993, 1),                  
('Hallowed Steam', 1995, 2),            
('Incandescent', 1998, 3),              
('Temporary Culture', 2001, 4),         
('Library of liberty', 2003, 4),        
('Chained Down', 2007, 5),                 
('Cabinet of fools', 2012, 5),          
('No guarantees', 2015, 5),             
('Apparatus', 2015, 6);                  



INSERT INTO SpotifyClone.musicas (nome_musica, duracao_segundo, album_id)
VALUES
 ('Soul For Us', 200, 1),
 ('Reflections Of Magic', 163, 1),
 ('Dance With Her Own', 116,1 ),
 ('Troubles Of My Inner Fire', 203, 2),
 ('Time Fireworks', 152, 2),
 ('Magic Circus', 105, 3),
 ('Honey, So Do I', 207, 3),
 ("Sweetie, Let's Go Wild", 139, 3),
 ('She Knows', 244, 3),
 ('Fantasy For Me',100 ,4),
 ('Celebration Of More', 146, 4),
 ('Rock His Everything', 223, 4),
 ('Home Forever', 231, 4),
 ('Diamond Power', 241, 4),
 ("Let's Be Silly", 132, 4),
 ('Thang Of Thunder', 240, 5),
 ('Words Of Her Life', 185, 5),
 ('Without My Streets', 176, 5),
 ('Need Of The Evening', 190, 6),
 ('History Of My Roses', 222, 6),
 ('Without My Love', 111, 6),
 ('Walking And Game', 123, 6),
 ('Young And Father', 197, 6),
 ('Finding My Traditions', 179, 7),
 ('Walking And Man', 229, 7),
 ('Hard And Time', 135, 7),
 ("Honey, I'm A Lone Wolf", 150, 7),
 ("She Thinks I Won't Stay Tonight", 166, 8),
 ("He Heard You're Bad For Me" ,154 ,8),
 ("He Hopes We Can't Stay", 210, 8),
 ("I Know I Know", 117,8),
 ("He's Walking Away", 159, 9),
 ("He's Trouble", 138, 9),
 ("I Heard I Want To Bo Alone", 120, 9),
 ("I Ride Alone", 151,9),
 ('Honey', 79, 10),
 ('You Cheated On Me', 95, 10),
 ("Wouldn't It Be Nice", 213, 10),
 ('Baby', 136,10),
 ("You Make Me Feel So..", 83, 10);

INSERT INTO SpotifyClone.historico_exibicoes (exibicao_id, usuario_id, musica_id, data_reproducao)
VALUES
(1, 1, 36, "2020-02-28 10:45:55"),
(2, 1, 25, "2020-05-02 05:30:35"),
(3, 1, 23, "2020-03-06 11:22:33"),
(4, 1, 14, "2020-08-05 08:05:17"),
(5, 1, 15, "2020-09-14 16:32:22"),
(6, 2, 34, "2020-01-02 07:40:33"),
(7, 2, 24, "2020-05-16 06:16:22"),
(8, 2, 21, "2020-10-09 12:27:48"),
(9, 2, 39, "2020-09-21 13:14:46"),
(10, 3, 6, "2020-11-13 16:55:13"),
(11, 3, 3, "2020-12-05 18:38:30"),
(12, 3, 26, "2020-07-30 10:00:00"),
(13, 4, 2, "2021-08-15 17:10:10"),
(14, 4, 35, "2021-07-10 15:20:30"),
(15, 4, 27, "2021-01-09 01:44:33"),
(16, 5, 7, "2020-07-03 19:33:28"),
(17, 5, 12, '2017-02-24 21:14:22'),
(18, 5, 14, '2020-08-06 15:23:43'),
(19, 5, 1, "2020-11-10 13:52:27"),
(20, 6, 38, "2019-02-07 20:33:48"),
(21, 6, 29, "2017-01-24 00:31:17"),
(22, 6, 30, "2017-10-12 12:35:20"),
(23, 6, 22, "2018-05-29 14:56:41"),
(24, 7, 5, "2018-05-09 22:30:49"),
(25, 7, 4, "2020-07-27 12:52:58"),
(26, 7, 11, "2018-01-16 18:40:43"),
(27, 8, 39, "2018-03-21 16:56:40"),
(28, 8, 40, "2020-10-18 13:38:05"),
(29, 8, 32, "2019-05-25 08:14:03"),
(30, 8, 33, "2021-08-15 21:37:09"),
(31, 9, 16, "2021-05-24 17:23:45"),
(32, 9, 17, "2018-12-07 22:48:52"),
(33, 9, 8, "2021-03-14 06:14:26"),
(34, 9, 9, "2020-04-01 03:36:00"),
(35, 10, 20, "2017-02-06 08:21:34"),
(36, 10, 21, "2017-12-04 05:33:43"),
(37, 10, 12, '2017-07-27 05:24:49'),
(38, 10, 13, "2017-12-25 01:03:57");
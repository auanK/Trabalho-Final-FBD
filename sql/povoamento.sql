-- Inserir Plataformas
INSERT INTO plataforma (nome, descricao) VALUES
('Nintendo Switch', 'Console portátil e de mesa da Nintendo.'),
('PlayStation 4', 'Console de videogame da Sony.'),
('Xbox One', 'Console de videogame da Microsoft.'),
('PC', 'Plataforma de jogos para computadores.'),
('Nintendo 3DS', 'Console portátil da Nintendo.'),
('Xbox Series X', 'Console de nova geração da Microsoft.'),
('PlayStation 5', 'Console de nova geração da Sony.'),
('Mobile', 'Jogos para dispositivos móveis.'),
('Wii U', 'Console da Nintendo.'),
('Atari', 'Console clássico de videogame.');

-- Inserir Jogos
INSERT INTO jogo (nome, capa, descricao, data_lancamento) VALUES
('Super Mario Odyssey', 'capa_smo.jpg', 'Um jogo de plataforma 3D.', '2017-10-27'),
('The Legend of Zelda: Breath of the Wild', 'capa_botw.jpg', 'Um jogo de aventura em mundo aberto.', '2017-03-03'),
('Celeste', 'capa_celeste.jpg', 'Um jogo de plataforma focado em desafios.', '2018-01-25'),
('Hollow Knight', 'capa_hk.jpg', 'Um jogo de aventura e exploração em 2D.', '2017-02-24'),
('Dark Souls III', 'capa_ds3.jpg', 'Um RPG de ação desafiador.', '2016-03-24'),
('Cuphead', 'capa_cuphead.jpg', 'Um jogo de plataforma e tiro com estilo vintage.', '2017-09-29'),
('Stardew Valley', 'capa_sdv.jpg', 'Um jogo de simulação de fazenda.', '2016-02-26'),
('Undertale', 'capa_undertale.jpg', 'Um RPG com múltiplos finais.', '2015-09-15'),
('Portal 2', 'capa_portal2.jpg', 'Um jogo de quebra-cabeça em primeira pessoa.', '2011-04-18'),
('Hades', 'capa_hades.jpg', 'Um roguelike de ação com narrativa profunda.', '2020-09-17');

-- Inserir Categorias
INSERT INTO categoria (nome, descricao) VALUES
('any%', 'Completar o jogo o mais rápido possível.'),
('100%', 'Completar todos os objetivos e coletar tudo.');

-- Inserir Usuários
INSERT INTO usuario (nickname, senha, email, data_nascimento, foto, pais) VALUES
('gamer_123', 'senha1', 'gamer123@gmail.com', '1990-01-01', 'foto1.jpg', 'Brasil'),
('speedrunner', 'senha2', 'speedrunner@yahoo.com', '1992-02-02', 'foto2.jpg', 'Portugal'),
('quick_joey', 'senha3', 'quick.joey@hotmail.com', '1988-03-03', 'foto3.jpg', 'EUA'),
('masterplayer', 'senha4', 'masterplayer@live.com', '1995-04-04', 'foto4.jpg', 'Alemanha'),
('challenge_king', 'senha5', 'challenge.king@gmail.com', '1991-05-05', 'foto5.jpg', 'França'),
('pixel_ninja', 'senha6', 'pixel.ninja@outlook.com', '1989-06-06', 'foto6.jpg', 'Japão'),
('run_master', 'senha7', 'run.master@gmail.com', '1994-07-07', 'foto7.jpg', 'Canadá'),
('epic_gamer', 'senha8', 'epicgamer@tiscali.co.uk', '1993-08-08', 'foto8.jpg', 'Reino Unido'),
('aussie_speedster', 'senha9', 'aussie.speedster@gmail.com', '1987-09-09', 'foto9.jpg', 'Austrália'),
('latino_runner', 'senha10', 'latino.runner@hotmail.com', '1996-10-10', 'foto10.jpg', 'México');

-- Inserir Moderadores (novos usuários)
INSERT INTO usuario (nickname, senha, email, data_nascimento, foto, pais) VALUES
('mod1', 'senha_mod1', 'mod1@gmail.com', '1985-01-01', 'foto_mod1.jpg', 'Brasil'),
('mod2', 'senha_mod2', 'mod2@yahoo.com', '1986-02-02', 'foto_mod2.jpg', 'Portugal'),
('mod3', 'senha_mod3', 'mod3@hotmail.com', '1987-03-03', 'foto_mod3.jpg', 'EUA'),
('mod4', 'senha_mod4', 'mod4@live.com', '1988-04-04', 'foto_mod4.jpg', 'Alemanha'),
('mod5', 'senha_mod5', 'mod5@gmail.com', '1989-05-05', 'foto_mod5.jpg', 'França');

-- Inserir Jogadores
INSERT INTO jogador (id) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10);

-- Inserir Moderadores
INSERT INTO moderador (id, nivel) VALUES
(11, 1),  -- id do mod1
(12, 2),  -- id do mod2
(13, 3),  -- id do mod3
(14, 1),  -- id do mod4
(15, 2);  -- id do mod5

-- Inserir Relacionamentos Jogo-Plataforma
INSERT INTO jogo_plataforma (jogo_id, plataforma_id) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 3),
(3, 2),
(3, 4),
(4, 1),
(5, 3),
(5, 4),
(6, 1),
(7, 5),
(8, 6),
(9, 4),
(10, 2);

-- Inserir Runs
INSERT INTO run (tempo, data, video, versao, jogo_id, plataforma_id, categoria_id) VALUES
('00:25:00', '2024-01-01', 'video1.mp4', '1.0', 1, 1, 1),
('00:30:00', '2024-01-02', 'video2.mp4', '1.0', 1, 1, 2),
('00:35:00', '2024-01-03', 'video3.mp4', '1.0', 2, 2, 1),
('00:40:00', '2024-01-04', 'video4.mp4', '1.0', 2, 2, 2),
('00:50:00', '2024-01-05', 'video5.mp4', '1.0', 3, 3, 1),
('01:00:00', '2024-01-06', 'video6.mp4', '1.0', 3, 3, 2),
('00:45:00', '2024-01-07', 'video7.mp4', '1.0', 4, 4, 1),
('00:55:00', '2024-01-08', 'video8.mp4', '1.0', 4, 4, 2),
('01:05:00', '2024-01-09', 'video9.mp4', '1.0', 5, 5, 1),
('01:15:00', '2024-01-10', 'video10.mp4', '1.0', 5, 5, 2);

-- Inserir Relacionamentos Jogador-Run
INSERT INTO jogador_run (jogador_id, run_id) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 4),
(3, 1),
(3, 2),
(3, 5),
(4, 3),
(4, 4),
(5, 1),
(5, 5),
(6, 2),
(6, 3),
(7, 3),
(7, 4),
(8, 1),
(8, 5),
(9, 2),
(9, 3),
(10, 4),
(10, 5);

-- Inserir Aceitações
INSERT INTO aceitacao (moderador_id, run_id) VALUES
(11, 1),
(11, 2),
(11, 3),
(11, 4),
(11, 5),
(11, 6),
(11, 7),
(11, 8),
(11, 9),
(11, 10);

-- Inserir Comentários sobre Jogo
INSERT INTO comentario_jogo (texto, data, jogador_id, jogo_id) VALUES
('Jogo incrível!', '2024-01-01', 1, 1),
('A jogabilidade é ótima!', '2024-01-02', 2, 2),
('Os gráficos são lindos!', '2024-01-03', 3, 3),
('A história é muito envolvente!', '2024-01-04', 4, 4),
('Os desafios são ótimos!', '2024-01-05', 5, 5),
('Jogar com amigos é muito divertido!', '2024-01-06', 6, 6),
('Uma experiência única!', '2024-01-07', 7, 7),
('Os personagens são carismáticos!', '2024-01-08', 8, 8),
('Adorei a trilha sonora!', '2024-01-09', 9, 9),
('Volto a jogar sempre!', '2024-01-10', 10, 10);

-- Inserir Comentários sobre Run
INSERT INTO comentario_run (texto, data, jogador_id, run_id) VALUES
('Excelente tempo, muito bem jogado!', '2024-01-01', 1, 1),
('Parabéns pela run!', '2024-01-02', 2, 2),
('Ótima execução!', '2024-01-03', 3, 3),
('Impressionante!', '2024-01-04', 4, 4),
('Jogar assim é incrível!', '2024-01-05', 5, 5),
('Você é um grande jogador!', '2024-01-06', 6, 6),
('Eu nunca conseguiria fazer isso!', '2024-01-07', 7, 7),
('A precisão é notável!', '2024-01-08', 8, 8),
('Muito bem jogado!', '2024-01-09', 9, 9),
('Incrível tempo, continue assim!', '2024-01-10', 10, 10);

-- Inserir Comentários em Resposta a Outro Comentário
INSERT INTO comentario_resposta (texto, data, jogador_id, comentario_pai_id) VALUES
('Concordo plenamente!', '2024-01-01', 2, 1),
('Você tem razão!', '2024-01-02', 3, 2),
('Exatamente o que eu pensei!', '2024-01-03', 4, 3),
('Que jogo incrível!', '2024-01-04', 5, 4),
('Essa run é um espetáculo!', '2024-01-05', 6, 5),
('Estou aprendendo muito com você!', '2024-01-06', 7, 6),
('Gostei muito das dicas!', '2024-01-07', 8, 7),
('Você é uma inspiração!', '2024-01-08', 9, 8),
('Adoro ver suas runs!', '2024-01-09', 10, 9),
('Continue assim!', '2024-01-10', 1, 10);

-- Inserir Curtidas em Jogos
INSERT INTO curtida_jogo (jogador_id, jogo_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- Inserir Curtidas em Runs
INSERT INTO curtida_run (jogador_id, run_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- Inserir Curtidas em Comentários
INSERT INTO curtida_comentario (jogador_id, comentario_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- Inserir Seguir Jogo
INSERT INTO seguir_jogo (jogador_id, jogo_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- Inserir Seguir Jogador
INSERT INTO seguir_jogador (jogador_id, jogador_seguido_id) VALUES
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(6, 7),
(7, 8),
(8, 9),
(9, 10),
(10, 1);

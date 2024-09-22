-- Tabela Jogo
CREATE TABLE jogo (
    id serial PRIMARY KEY,
    nome varchar(100) NOT NULL,
    capa varchar(100) NOT NULL,
    descricao text NOT NULL,
    data_lancamento date NOT NULL
);

-- Tabela Plataforma
CREATE TABLE plataforma (
    id serial PRIMARY KEY,
    nome varchar(100) NOT NULL,
    descricao text NOT NULL
);

-- Relacionamento Jogo-Plataforma
CREATE TABLE jogo_plataforma (
    jogo_id int NOT NULL,
    plataforma_id int NOT NULL,
    PRIMARY KEY (jogo_id, plataforma_id),
    FOREIGN KEY (jogo_id) REFERENCES jogo(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (plataforma_id) REFERENCES plataforma(id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Tabela Categoria
CREATE TABLE categoria (
    id serial PRIMARY KEY,
    nome varchar(100) NOT NULL,
    descricao text NOT NULL
);

-- Tabela Run
CREATE TABLE run (
    id serial PRIMARY KEY,
    tempo time NOT NULL,
    data date NOT NULL,
    video varchar(100) NOT NULL,
    versao varchar(100) NOT NULL,
    jogo_id int NOT NULL,
    plataforma_id int NOT NULL,
    categoria_id int NOT NULL,
    FOREIGN KEY (jogo_id) REFERENCES jogo(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (plataforma_id) REFERENCES plataforma(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (categoria_id) REFERENCES categoria(id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Tabela Usuario
CREATE TABLE usuario (
    id serial PRIMARY KEY,
    nickname varchar(100) UNIQUE NOT NULL,
    senha varchar(100) NOT NULL,
    email varchar(100) UNIQUE NOT NULL,
    data_nascimento date NOT NULL,
    foto varchar(100),
    pais varchar(100) NOT NULL
);

-- Tabela Moderador
CREATE TABLE moderador (
    id int PRIMARY KEY,
    nivel int NOT NULL,
    FOREIGN KEY (id) REFERENCES usuario(id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Tabela Jogador
CREATE TABLE jogador (
    id int PRIMARY KEY,
    FOREIGN KEY (id) REFERENCES usuario(id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Relacionamento Jogador-Run
CREATE TABLE jogador_run (
    jogador_id int NOT NULL,
    run_id int NOT NULL,
    PRIMARY KEY (jogador_id, run_id),
    FOREIGN KEY (jogador_id) REFERENCES jogador(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (run_id) REFERENCES run(id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Tabela de Aceitação
CREATE TABLE aceitacao (
    id serial PRIMARY KEY,
    moderador_id int NOT NULL,
    run_id int NOT NULL,
    FOREIGN KEY (moderador_id) REFERENCES moderador(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (run_id) REFERENCES run(id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Comentários sobre Jogo
CREATE TABLE comentario_jogo (
    id serial PRIMARY KEY,
    texto text NOT NULL,
    data date NOT NULL,
    jogador_id int NOT NULL,
    jogo_id int NOT NULL,
    FOREIGN KEY (jogador_id) REFERENCES jogador(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (jogo_id) REFERENCES jogo(id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Comentários sobre Run
CREATE TABLE comentario_run (
    id serial PRIMARY KEY,
    texto text NOT NULL,
    data date NOT NULL,
    jogador_id int NOT NULL,
    run_id int NOT NULL,
    FOREIGN KEY (jogador_id) REFERENCES jogador(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (run_id) REFERENCES run(id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Comentários em Resposta a Outro Comentário
CREATE TABLE comentario_resposta (
    id serial PRIMARY KEY,
    texto text NOT NULL,
    data date NOT NULL,
    jogador_id int NOT NULL,
    comentario_pai_id int NOT NULL,
    FOREIGN KEY (jogador_id) REFERENCES jogador(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (comentario_pai_id) REFERENCES comentario_resposta(id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Curtir Jogo
CREATE TABLE curtida_jogo (
    id serial PRIMARY KEY,
    jogador_id int NOT NULL,
    jogo_id int NOT NULL,
    FOREIGN KEY (jogador_id) REFERENCES jogador(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (jogo_id) REFERENCES jogo(id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Curtir Run
CREATE TABLE curtida_run (
    id serial PRIMARY KEY,
    jogador_id int NOT NULL,
    run_id int NOT NULL,
    FOREIGN KEY (jogador_id) REFERENCES jogador(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (run_id) REFERENCES run(id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Curtir Comentário
CREATE TABLE curtida_comentario (
    id serial PRIMARY KEY,
    jogador_id int NOT NULL,
    comentario_id int NOT NULL,
    FOREIGN KEY (jogador_id) REFERENCES jogador(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (comentario_id) REFERENCES comentario_resposta(id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Seguir Jogo
CREATE TABLE seguir_jogo (
    id serial PRIMARY KEY,
    jogador_id int NOT NULL,
    jogo_id int NOT NULL,
    FOREIGN KEY (jogador_id) REFERENCES jogador(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (jogo_id) REFERENCES jogo(id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Seguir Jogador
CREATE TABLE seguir_jogador (
    id serial PRIMARY KEY,
    jogador_id int NOT NULL,
    jogador_seguido_id int NOT NULL,
    FOREIGN KEY (jogador_id) REFERENCES jogador(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (jogador_seguido_id) REFERENCES jogador(id) ON DELETE CASCADE ON UPDATE CASCADE
);
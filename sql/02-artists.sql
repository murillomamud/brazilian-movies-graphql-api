\c movies;

CREATE TABLE artists (
    movieId INT NOT NULL,
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    characterName VARCHAR(255) NOT NULL
);

-- POPULATE THE TABLE
INSERT INTO "artists"(movieId, name, characterName) VALUES (1, 'Fernanda Montenegro', 'Dora');
INSERT INTO "artists"(movieId, name, characterName) VALUES (1, 'Vinícius de Oliveira', 'Zé do Caixão');
INSERT INTO "artists"(movieId, name, characterName) VALUES (1, 'Wagner Moura', 'José');
INSERT INTO "artists"(movieId, name, characterName) VALUES (1, 'Marília Pêra', 'Dona Florinda');
INSERT INTO "artists"(movieId, name, characterName) VALUES (1, 'Selton Mello', 'Mestre Bimba');

INSERT INTO "artists"(movieId, name, characterName) VALUES (2, 'Alexandre Rodrigues', 'Buscapé');
INSERT INTO "artists"(movieId, name, characterName) VALUES (2, 'Leandro Firmino', 'Bené');
INSERT INTO "artists"(movieId, name, characterName) VALUES (2, 'Matheus Nachtergaele', 'Zé Pequeno');
INSERT INTO "artists"(movieId, name, characterName) VALUES (2, 'Phellipe Haagensen', 'Laranjinha');
INSERT INTO "artists"(movieId, name, characterName) VALUES (2, 'Douglas Silva', 'Dadá');
INSERT INTO "artists"(movieId, name, characterName) VALUES (2, 'Seu Jorge', 'Seu Mané');
INSERT INTO "artists"(movieId, name, characterName) VALUES (2, 'Jonathan Haagensen', 'Cabeleira');
INSERT INTO "artists"(movieId, name, characterName) VALUES (2, 'Klebber Toledo', 'Cascão');
INSERT INTO "artists"(movieId, name, characterName) VALUES (2, 'Alice Braga', 'Mimóca');
INSERT INTO "artists"(movieId, name, characterName) VALUES (2, 'Carolina Dieckmann', 'Mônica');

INSERT INTO "artists"(movieId, name, characterName) VALUES (3, 'Bárbara Colen', 'Kleiton');
INSERT INTO "artists"(movieId, name, characterName) VALUES (3, 'Silvero Pereira', 'Darcy');
INSERT INTO "artists"(movieId, name, characterName) VALUES (3, 'Udo Kier', 'Dr. Júlio');
INSERT INTO "artists"(movieId, name, characterName) VALUES (3, 'Sônia Braga', 'Tereza');
INSERT INTO "artists"(movieId, name, characterName) VALUES (3, 'Thomas Aquino', 'Tonico');

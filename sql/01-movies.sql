create database movies;

\c movies;

CREATE TABLE movies (
  id SERIAL,
  title VARCHAR(255) NOT NULL,
  year VARCHAR(4) NOT NULL,
  url VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

-- POPULATE THE TABLE
INSERT INTO movies (title, year, url) VALUES ('Central do Brasil', 1998, 'https://www.imdb.com/title/tt0120745/');
INSERT INTO movies (title, year, url) VALUES ('Cidade de Deus', 2002, 'https://www.imdb.com/title/tt0317248/');
INSERT INTO movies (title, year, url) VALUES ('Bacurau', 2019, 'https://www.imdb.com/title/tt8946378/');
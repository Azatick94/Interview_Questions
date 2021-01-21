DROP TABLE author;

CREATE TABLE IF NOT EXISTS author
(
    author_id SERIAL PRIMARY KEY,
    name_author VARCHAR(50) NOT NULL
);

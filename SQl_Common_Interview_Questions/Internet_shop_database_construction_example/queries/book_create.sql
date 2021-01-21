DROP TABLE book;

CREATE TABLE IF NOT EXISTS book (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(30) not null ,
    author_id int not null,
    genre_id int not null,
    price DECIMAL(10,2) NOT NULL ,
    amount INT DEFAULT 1,
    FOREIGN KEY (author_id) REFERENCES author(author_id),
    FOREIGN KEY (genre_id) REFERENCES genre(genre_id)
)

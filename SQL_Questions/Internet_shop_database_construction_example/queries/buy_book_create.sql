DROP TABLE if exists buy_book;

CREATE TABLE buy_book (
    buy_book_id SERIAL PRIMARY KEY,
    book_id INT not null ,
    buy_id INT not null ,
    FOREIGN KEY (book_id) REFERENCES book(book_id),
    FOREIGN KEY (buy_id) REFERENCES buy(buy_id)
);


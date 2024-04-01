CREATE TABLE author (
  id_author SERIAL PRIMARY KEY,
  names VARCHAR(255) NOT NULL,
  last_names VARCHAR(255) NOT NULL,
  birthdate DATE
);

CREATE TABLE customer (
  id_customer SERIAL PRIMARY KEY,
  names VARCHAR(255) NOT NULL,
  last_names VARCHAR(255) NOT NULL,
  age INT NOT NULL
);

CREATE TABLE book (
  id_book SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  id_author INT REFERENCES author(id_author),
  genre VARCHAR(255)
);

CREATE TABLE copy (
  id_copy SERIAL PRIMARY KEY,
  id_book INT REFERENCES book(id_book),
  location VARCHAR(255),
  status VARCHAR(255)
);

CREATE TABLE loan (
  id_loan SERIAL PRIMARY KEY,
  loan_date DATE NOT NULL,
  return_date DATE,
  id_customer INT REFERENCES customer(id_customer),
  id_copy INT REFERENCES copy(id_copy)
);

INSERT INTO author (names, last_names, birthdate)
VALUES
  ('Juancho', 'Chanin', '2002-02-02'),
  ('Alexander', 'Yazir', '1999-04-28'),
  ('Diego', 'Rivera', '1886-12-08'),
  ('María', 'Gómez', '1975-08-15');

INSERT INTO customer (names, last_names, age)
VALUES
  ('Juan', 'Canche', 20),
  ('Diego', 'Ramirez', 18),
  ('Natanael', 'Chan', 18);

INSERT INTO book (title, id_author, genre) 
VALUES
  ('Pepito el mago', 1, 'Fantasy'),
  ('Mañana hablamos', 2, 'Romance'),
  ('El dia de mañana', 3, 'Science Fiction'),
  ('La magia de la vida', 4, 'Self-Help');

INSERT INTO copy (id_book, location, status) 
VALUES
  (1, 'Library Shelf A', 'Available'),
  (2, 'Library Shelf B', 'Checked Out'),
  (3, 'Library Shelf C', 'Available'),
  (4, 'Library Shelf D', 'Available');

INSERT INTO loan (loan_date, return_date, id_customer, id_copy)
VALUES
  ('2024-03-05', '2024-03-15', 1, 1),
  ('2024-03-01', NULL, 2, 2),
  ('2024-02-28', '2024-03-10', 3, 3);

INSERT INTO author (names, last_names, birthdate)
VALUES ('María', 'Gómez', '1975-08-15');

SELECT * FROM loan;

SELECT * FROM copy WHERE status = 'Available';

SELECT * FROM author;

SELECT * FROM book;

SELECT * FROM customer;

ALTER TABLE book ADD COLUMN publication_year INT;

DROP TABLE IF EXISTS copy;

UPDATE book SET title = 'El mago Pepito' WHERE id_book = 1;

DELETE FROM loan WHERE id_loan = 3;

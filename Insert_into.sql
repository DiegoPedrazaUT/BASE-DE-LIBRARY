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
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
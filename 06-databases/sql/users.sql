CREATE TABLE users (
  id integer PRIMARY KEY AUTOINCREMENT,
  fname varchar(50),
  dateCreated timestamp DEFAULT current_timestamp
);

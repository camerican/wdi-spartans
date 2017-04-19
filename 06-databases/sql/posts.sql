CREATE TABLE posts (
  id integer PRIMARY KEY AUTOINCREMENT,
  content varchar(140),
  title varchar(50),
  date_created timestamp DEFAULT current_timestamp,
  user_id integer
);

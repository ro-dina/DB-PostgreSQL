DROP TABLE IF EXISTS p_characters;

START TRANSACTION;

CREATE TABLE p_characters (
  id INTEGER,
  name VARCHAR(20),
  age INTEGER,
  
  PRIMARY KEY (id),
  CHECK (name IS NOT NULL),
  CHECK (age >= 0)
);

INSERT INTO
  p_characters (id, name, age)
VALUES
  (1, 'Alice', 20),
  (2, 'Bob', 19);

SELECT
  *
FROM
  p_characters;

ROLLBACK;
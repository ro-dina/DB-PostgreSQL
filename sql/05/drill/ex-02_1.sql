START TRANSACTION;

SELECT
    id,
    name,
    buff
FROM
    s_characters;

UPDATE s_characters
SET
    buff = 0.0;

SELECT
    id,
    name,
    buff
FROM
    s_characters;

ROLLBACK;
START TRANSACTION;

SELECT
    id,
    name,
    last_login_at,
    buff
FROM
    s_characters
ORDER BY
    last_login_at;

UPDATE s_characters
SET
    buff = buff + 0.25;

SELECT
    id,
    name,
    last_login_at,
    buff
FROM
    s_characters
ORDER BY
    last_login_at;

ROLLBACK;
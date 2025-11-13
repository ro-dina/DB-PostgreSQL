START TRANSACTION;

DELETE FROM s_characters
WHERE
    last_login_at IS NULL AND
    created_on <= '2023-12-31';

SELECT
    id,
    name,
    last_login_at,
    created_on
FROM
    s_characters
WHERE
    last_login_at IS NULL
ORDER BY
    created_on;

ROLLBACK;
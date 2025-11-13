START TRANSACTION;

DELETE FROM s_characters
WHERE
    DATE '2025-10-15' - CAST(last_login_at AS DATE) >= 60;

SELECT
    id,
    name,
    DATE '2025-10-15' - CAST(last_login_at AS DATE) AS "Days"
FROM
    s_characters
ORDER BY
    last_login_at;

ROLLBACK;
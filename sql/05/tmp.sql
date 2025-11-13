SELECT
    DATE_TRUNC('hour', last_login_at) AS "date", -- ◀ ここに注目
    COUNT(*) AS "num"
FROM
    s_characters
WHERE
    last_login_at IS NOT NULL
GROUP BY
    DATE_TRUNC('hour', last_login_at);

-- ◀ ここに注目
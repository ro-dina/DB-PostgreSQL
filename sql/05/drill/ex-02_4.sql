START TRANSACTION;

-- 更新前確認
SELECT
    id,
    name,
    buff,
    last_login_at,
    DATE '2025-10-15' - CAST(last_login_at AS DATE) AS days
FROM
    s_characters
ORDER BY
    id;

-- 更新処理（自動段階化）
UPDATE s_characters
SET
    buff = LEAST(ROUND((DATE '2025-10-15' - CAST(last_login_at AS DATE)) / 10, 0) * 0.1, 0.4)
RETURNING
    id,
    name,
    buff,
    last_login_at,
    DATE '2025-10-15' - CAST(last_login_at AS DATE) AS days;

ROLLBACK;

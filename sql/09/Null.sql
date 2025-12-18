DROP TABLE IF EXISTS p_characters;

START TRANSACTION;

CREATE TABLE p_characters (
    character_id INTEGER PRIMARY KEY,
    name VARCHAR(16) NOT NULL,
    email VARCHAR(64) -- UNIQUEは式インデックスで一括管理
);

-- NULLを1件だけ許容する部分UNIQUEインデックスを追加
CREATE UNIQUE INDEX unique_email_with_null ON p_characters (COALESCE(email, '__ONLY_ONE_NULL__'));

-- テスト
-- 1件目のNULLはOK
INSERT INTO
    p_characters (character_id, name, email)
VALUES
    (1, 'Alice', NULL),
    (2, 'Bob', 'NULL'),
    (3, 'C', 'a');

-- 2件目のNULLは一意制約違反（確認したいときはコメントを外してください）
-- INSERT INTO p_characters (character_id, name, email) VALUES (2, 'Bob', NULL);
-- 非NULLのメールは通常通り一意に扱われる
--INSERT INTO
--    p_characters (character_id, name, email)
--VALUES
--    (3, 'C', 'a');
-- これはOK（NULLは1件）
SELECT
    *
FROM
    p_characters;

-- 2件目の NULL を入れるとエラーになる
-- INSERT INTO p_characters (character_id, name, email)
-- VALUES (3, 'Charlie', NULL);  -- ここで UNIQUE違反
ROLLBACK;
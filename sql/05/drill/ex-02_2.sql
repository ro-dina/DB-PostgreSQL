START TRANSACTION;

SELECT
    id,
    name,
    job
FROM
    s_characters;

UPDATE s_characters
SET
    job = 'Mage'
WHERE
    job = 'Wizard';

SELECT
    id,
    name,
    job
FROM
    s_characters
WHERE
    job = 'Mage';

ROLLBACK;
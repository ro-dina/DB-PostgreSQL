SELECT
    MAX(LENGTH(COALESCE(guild, 'Freelancer'))) || '文字' AS "最長ギルド名"
FROM
    s_characters;
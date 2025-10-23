SELECT
    id,
    name,
    buff,
    CASE
        WHEN buff = 0.0 THEN '--'
        WHEN buff > 0.0 THEN 'buff'
        ELSE 'debuff'
    END AS "status"
FROM
    s_characters

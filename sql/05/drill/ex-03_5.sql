SELECT
    MIN(buff) AS "min_buff",
    MAX(buff) AS "max_baff",
    MAX(buff) - MIN(buff) AS "max-min"
FROM
    s_characters
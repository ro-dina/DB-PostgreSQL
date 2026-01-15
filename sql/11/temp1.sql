SELECT
  j.job_id,
  MAX(j.name) AS "name",
  COUNT(*)
FROM
  n_characters AS c
  JOIN n_jobs AS j ON j.job_id = c.job_id
GROUP BY
  j.job_id
ORDER BY
  j.job_id;
SELECT
  job_id,
  name,
  (
    SELECT
      COUNT(*)
    FROM
      n_characters
    WHERE
      n_characters.job_id = n_jobs.job_id
  ) AS "COUNT"
FROM
  n_jobs
ORDER BY
  job_id;
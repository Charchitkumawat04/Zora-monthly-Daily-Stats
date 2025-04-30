SELECT
  DATE_TRUNC('day', block_time) AS day,
  COUNT(*) AS transaction_count
FROM zora.transactions
WHERE
  block_time >= DATE_TRUNC('year', CURRENT_DATE) - INTERVAL '1' YEAR
GROUP BY
  1
ORDER BY
  day

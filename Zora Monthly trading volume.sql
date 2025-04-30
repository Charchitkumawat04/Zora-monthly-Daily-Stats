SELECT
  DATE_TRUNC('month', block_time) AS month,
  DATE_TRUNC('day', block_time) AS day,
  SUM(amount_usd) AS volume
FROM zora.trades
WHERE
  block_time >= CURRENT_DATE - INTERVAL '1' YEAR
GROUP BY
  1,
  2
ORDER BY
  month,
  day

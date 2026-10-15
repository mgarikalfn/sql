SELECT
    transaction_id,
    account_id,
    transaction_type_id,
    channel_id,
    amount,
    transaction_date,
    status
FROM transactions
WHERE status = 'SUCCESS'
  AND transaction_date >= TIMESTAMP '2026-03-01 00:00:00'
  AND transaction_date <  TIMESTAMP '2026-04-01 00:00:00'
ORDER BY transaction_date;
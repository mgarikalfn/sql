SELECT
    account_id,
    COUNT(*) AS successful_transaction_count,
    SUM(amount) AS total_successful_amount
FROM transactions
WHERE status = 'SUCCESS'
GROUP BY account_id
ORDER BY total_successful_amount DESC
LIMIT 10;

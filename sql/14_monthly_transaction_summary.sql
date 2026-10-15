SELECT
    DATE_TRUNC('month', transaction_date)::date AS transaction_month,
    status,
    COUNT(*) AS transaction_count,
    SUM(amount) AS total_amount
FROM transactions
GROUP BY DATE_TRUNC('month', transaction_date)::date, status
ORDER BY transaction_month, status;
SELECT
    transaction_date::date AS transaction_day,
    COUNT(*) AS transaction_count,
    SUM(amount) AS total_amount
FROM transactions
GROUP BY transaction_date::date
ORDER BY transaction_day;

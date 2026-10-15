SELECT
    c.channel_name,
    COUNT(t.transaction_id) AS transaction_count,
    COALESCE(SUM(t.amount), 0) AS total_amount
FROM channels c
LEFT JOIN transactions t ON t.channel_id = c.channel_id
GROUP BY c.channel_id, c.channel_name
ORDER BY total_amount DESC;
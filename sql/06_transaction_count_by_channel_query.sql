SELECT
    c.channel_name,
    COUNT(t.transaction_id) AS transaction_count
FROM channels c
LEFT JOIN transactions t ON t.channel_id = c.channel_id
GROUP BY c.channel_id, c.channel_name
ORDER BY transaction_count DESC;
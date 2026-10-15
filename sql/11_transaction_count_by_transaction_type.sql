SELECT
    tt.type_name,
    tt.direction,
    COUNT(t.transaction_id) AS transaction_count
FROM transaction_types tt
LEFT JOIN transactions t
    ON t.transaction_type_id = tt.transaction_type_id
GROUP BY tt.transaction_type_id, tt.type_name, tt.direction
ORDER BY transaction_count DESC;
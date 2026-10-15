SELECT
    tt.type_name,
    tt.direction,
    COUNT(t.transaction_id) AS successful_transaction_count,
    COALESCE(SUM(t.amount), 0) AS total_successful_amount
FROM transaction_types tt
LEFT JOIN transactions t
    ON t.transaction_type_id = tt.transaction_type_id
   AND t.status = 'SUCCESS'
GROUP BY tt.transaction_type_id, tt.type_name, tt.direction
ORDER BY total_successful_amount DESC;

SELECT
    transaction_id,
    account_id,
    amount,
    transaction_date,
    status
FROM transactions
WHERE amount > (
    SELECT AVG(amount)
    FROM transactions
)
ORDER BY amount DESC;
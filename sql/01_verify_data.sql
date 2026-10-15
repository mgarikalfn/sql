
SELECT
    (SELECT COUNT(*) FROM transaction_types) AS transaction_types,
    (SELECT COUNT(*) FROM channels) AS channels,
    (SELECT COUNT(*) FROM transactions) AS transactions;

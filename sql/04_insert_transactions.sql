
-- Assignment 3: Transaction Management
-- Generate 60 sample transactions across more than six months.
--
-- IMPORTANT:
-- Account IDs 2001-2010 are temporary sample IDs.
-- Replace or reconcile them with the shared account dataset
-- provided by the colleague handling Assignment 2.

INSERT INTO transactions (
    transaction_id,
    account_id,
    transaction_type_id,
    channel_id,
    amount,
    transaction_date,
    status
)
SELECT
    1000 + n,
    2001 + ((n - 1) % 10),
    1 + ((n - 1) % 8),
    1 + ((n - 1) % 6),
    (100 + ((n * 137) % 9900))::NUMERIC(18,2),
    TIMESTAMP '2026-01-01 09:00:00'
        + ((n - 1) * INTERVAL '4 days'),
    CASE
        WHEN n % 10 = 0 THEN 'REVERSED'
        WHEN n % 7 = 0 THEN 'FAILED'
        ELSE 'SUCCESS'
    END
FROM generate_series(1, 60) AS series(n);
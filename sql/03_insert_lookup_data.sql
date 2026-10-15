

INSERT INTO transaction_types
    (transaction_type_id, type_name, direction)
VALUES
    (1, 'Deposit', 'CREDIT'),
    (2, 'Withdrawal', 'DEBIT'),
    (3, 'Transfer In', 'CREDIT'),
    (4, 'Transfer Out', 'DEBIT'),
    (5, 'Interest Credit', 'CREDIT'),
    (6, 'Bank Fee', 'DEBIT'),
    (7, 'Loan Disbursement', 'CREDIT'),
    (8, 'Loan Repayment', 'DEBIT');


INSERT INTO channels (channel_id, channel_name)
VALUES
    (1, 'Mobile Banking'),
    (2, 'ATM'),
    (3, 'Branch'),
    (4, 'Internet Banking'),
    (5, 'POS'),
    (6, 'USSD');

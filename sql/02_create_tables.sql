
CREATE TABLE transaction_types (
    transaction_type_id INTEGER PRIMARY KEY,
    type_name VARCHAR(50) NOT NULL UNIQUE,
    direction VARCHAR(10) NOT NULL
        CHECK (direction IN ('DEBIT', 'CREDIT'))
);


CREATE TABLE channels (
    channel_id INTEGER PRIMARY KEY,
    channel_name VARCHAR(50) NOT NULL UNIQUE
);


CREATE TABLE transactions (
    transaction_id BIGINT PRIMARY KEY,
    account_id BIGINT NOT NULL,
    transaction_type_id INTEGER NOT NULL
        REFERENCES transaction_types(transaction_type_id),
    channel_id INTEGER NOT NULL
        REFERENCES channels(channel_id),
    amount NUMERIC(18,2) NOT NULL
        CHECK (amount > 0),
    transaction_date TIMESTAMP NOT NULL,
    status VARCHAR(20) NOT NULL
        CHECK (status IN ('SUCCESS', 'FAILED', 'REVERSED'))
);

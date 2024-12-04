CREATE TABLE account (
    id SERIAL PRIMARY KEY,             -- Auto-incrementing ID, primary key, change data type here, this is for poc.
    full_name VARCHAR(255) NOT NULL,    -- Full name with a maximum length of 255 characters
    date_of_birth DATE NOT NULL,        -- Date of birth in YYYY-MM-DD format
    address1 VARCHAR(255),              -- Address1 with a maximum length of 255 characters
    pin_code VARCHAR(10),               -- Pin code (postal code) with a maximum length of 10 characters
    created_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- Automatically set to current timestamp when a row is created
    updated_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP  -- Automatically updated to current timestamp when a row is created
);

INSERT INTO account (full_name, date_of_birth, address1, pin_code, created_on, updated_on)
VALUES
    ('John Doe', '1985-06-15', '123 Main St, Apt 4B', '10001', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('Jane Smith', '1990-11-20', '456 Oak Rd, Apt 12C', '20002', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('Alice Johnson', '1982-03-25', '789 Pine Blvd', '30003', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('Bob Brown', '1975-07-10', '101 Maple Ave', '40004', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('Charlie Davis', '1995-12-30', '202 Cedar Ln', '50005', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('David Wilson', '1980-01-05', '303 Birch Dr', '60006', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('Eve Lewis', '1992-08-18', '404 Elm St', '70007', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('Frank White', '1978-09-22', '505 Willow Way', '80008', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('Grace Adams', '1987-04-14', '606 Redwood Blvd', '90009', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('Hannah Clark', '1998-10-02', '707 Spruce St', '10010', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
	
	
CREATE TABLE transactions (
    id SERIAL PRIMARY KEY,                    -- Auto-incrementing ID, primary key
    account_id INT NOT NULL,                   -- Foreign key referencing account ID
    credit_amount DECIMAL(15, 2) DEFAULT 0,    -- Credit amount with 2 decimal precision, default 0
    debit_amount DECIMAL(15, 2) DEFAULT 0,     -- Debit amount with 2 decimal precision, default 0
    balance_carried_forward DECIMAL(15, 2) DEFAULT 0, -- Balance carried forward with 2 decimal precision
    created_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- Timestamp for when the transaction was created
    FOREIGN KEY (account_id) REFERENCES account(id)  -- Foreign key to the account table
);

INSERT INTO transactions (account_id, credit_amount, debit_amount, balance_carried_forward, created_on)
VALUES
    (1, 500.00, 0.00, 1000.00, CURRENT_TIMESTAMP),
    (2, 200.00, 0.00, 500.00, CURRENT_TIMESTAMP),
    (3, 0.00, 100.00, 1500.00, CURRENT_TIMESTAMP),
    (4, 0.00, 50.00, 1200.00, CURRENT_TIMESTAMP),
    (5, 150.00, 0.00, 300.00, CURRENT_TIMESTAMP),
    (6, 0.00, 200.00, 800.00, CURRENT_TIMESTAMP),
    (7, 100.00, 0.00, 1000.00, CURRENT_TIMESTAMP),
    (8, 0.00, 75.00, 850.00, CURRENT_TIMESTAMP),
    (9, 250.00, 0.00, 1800.00, CURRENT_TIMESTAMP),
    (10, 0.00, 120.00, 400.00, CURRENT_TIMESTAMP);
	
	

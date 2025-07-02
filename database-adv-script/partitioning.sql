-- Create the parent bookings table partitioned by RANGE on start_date
CREATE TABLE bookings_partitioned (
    id SERIAL PRIMARY KEY,
    user_id VARCHAR(50),
    property_id VARCHAR(50),
    start_date DATE,
    end_date DATE,
    status VARCHAR(20)
) PARTITION BY RANGE (start_date);

-- Create partitions (example: one per quarter)
CREATE TABLE bookings_q1 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2025-01-01') TO ('2025-04-01');

CREATE TABLE bookings_q2 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2025-04-01') TO ('2025-07-01');

CREATE TABLE bookings_q3 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2025-07-01') TO ('2025-10-01');

CREATE TABLE bookings_q4 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2025-10-01') TO ('2026-01-01');

-- Sample query using WHERE to test partition pruning
EXPLAIN
SELECT * FROM bookings_partitioned
WHERE start_date BETWEEN '2025-04-15' AND '2025-05-15';

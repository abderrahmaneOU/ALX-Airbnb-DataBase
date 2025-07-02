# Partitioning Performance Report

## Objective
Optimize the performance of date-based queries on the `bookings` table by implementing partitioning.

---

## Implementation
Partitioned the `bookings` table by `start_date` using **RANGE** partitioning across quarters of the year.

---

## Observations

- Before partitioning, full table scans were performed.
- After partitioning, partition pruning occurred, scanning only relevant partitions (e.g., Q2).
- Query execution plan showed improved performance due to reduced I/O operations and better filtering.

---

## Conclusion

Partitioning the `bookings` table significantly enhances performance for date-range queries by minimizing scanned data and improving query efficiency.

## Partitioning Performance Report

### Goal:
Optimize performance of queries on the large `bookings` table by partitioning it by `start_date`.

### Approach:
- Partitioned the table using `RANGE` on `YEAR(start_date)`.
- Added partitions for years 2020–2023, and a fallback (`MAXVALUE`).
- Tested a query filtering by date using `EXPLAIN ANALYZE`.

### Observations:
- Before partitioning, the query scanned the entire table.
- After partitioning, only relevant partitions were scanned.
- This significantly reduced I/O and improved query performance.

### Conclusion:
Partitioning by `start_date` allows better performance when querying by date ranges and helps scale the bookings table efficiently.

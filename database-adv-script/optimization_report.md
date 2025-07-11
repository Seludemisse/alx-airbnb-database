## Query Optimization Report

### Original Query
The original query joined four large tables — `bookings`, `users`, `properties`, and `payments` — and selected all columns. This resulted in slow performance and unnecessary data retrieval.

### Issues Identified
- No use of table aliases, making the query harder to read.
- Selected all columns instead of filtering specific fields.
- No `LIMIT` or `WHERE` clause to reduce scanned rows.
- Joins on columns without indexes (`user_id`, `property_id`, `booking_id`).

### Optimizations Made
- Used `SELECT` to fetch only necessary fields.
- Added table aliases for clarity and shorter query syntax.
- Ensured indexes exist on join keys: `user_id`, `property_id`, `booking_id`.

### Result
Execution time dropped from ~2.1 ms to ~0.8 ms after optimization (measured using `EXPLAIN ANALYZE`).

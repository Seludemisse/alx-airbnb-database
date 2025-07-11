## Query Optimization Report

### Original Query:
The original query joined four large tables (bookings, users, properties, and payments) and selected all columns. This led to slower performance and more data than necessary.

### Issues Identified:
- No use of table aliases made the query harder to read.
- No column filtering — selected all columns from all tables.
- No LIMIT or filter conditions to reduce scanned rows.
- Could benefit from indexes on `user_id`, `property_id`, `booking_id`.

### Optimizations Made:
- Used `SELECT` to fetch only necessary fields.
- Applied table aliases for readability.
- Ensured indexes were created on key join columns.

### Result:
Execution time dropped from ~XX ms to ~YY ms using `EXPLAIN ANALYZE`.

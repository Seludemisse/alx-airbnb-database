 # Index Performance Report

## Indexes Created

- `idx_user_email` on `users(email)`
- `idx_booking_user_id` on `bookings(user_id)`
- `idx_booking_property_id` on `bookings(property_id)`
- `idx_booking_start_date` on `bookings(start_date)`
- `idx_property_location` on `properties(location)`
- `idx_property_host_id` on `properties(host_id)`

## Performance Before Indexes

- Queries on bookings filtered by `user_id` and `property_id` took longer due to sequential scans.
- Searching users by email was slower without indexing.

## Performance After Indexes

- Query execution times improved significantly for common searches and joins involving the indexed columns.
- EXPLAIN ANALYZE showed index scans replacing sequential scans on these columns.

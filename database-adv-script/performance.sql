-- Initial query: Fetch bookings with user, property, and payment details
EXPLAIN ANALYZE
SELECT
    bookings.id AS booking_id,
    bookings.start_date,
    bookings.end_date,
    users.name AS user_name,
    properties.name AS property_name,
    payments.amount
FROM
    bookings
JOIN users ON bookings.user_id = users.id
JOIN properties ON bookings.property_id = properties.id
JOIN payments ON bookings.id = payments.booking_id;

-- Optimized query: Uses table aliases and assumes indexes exist
EXPLAIN ANALYZE
SELECT
    b.id AS booking_id,
    b.start_date,
    b.end_date,
    u.name AS user_name,
    p.name AS property_name,
    pay.amount
FROM
    bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.id = pay.booking_id;

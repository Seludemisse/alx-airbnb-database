-- INNER JOIN: Bookings with the users who made them
SELECT bookings.id AS booking_id, bookings.property_id, bookings.start_date, bookings.end_date,
       users.id AS user_id, users.name AS user_name, users.email
FROM bookings
INNER JOIN users ON bookings.user_id = users.id;

-- LEFT JOIN: All properties and their reviews (even if no reviews exist)
SELECT properties.id AS property_id, properties.name AS property_name,
       reviews.id AS review_id, reviews.rating, reviews.comment
FROM properties
LEFT JOIN reviews ON properties.id = reviews.property_id;

--  FULL OUTER JOIN (simulated)
SELECT users.id AS user_id, users.name AS user_name,
       bookings.id AS booking_id, bookings.property_id
FROM users
LEFT JOIN bookings ON users.id = bookings.user_id

UNION

SELECT users.id AS user_id, users.name AS user_name,
       bookings.id AS booking_id, bookings.property_id
FROM bookings
LEFT JOIN users ON users.id = bookings.user_id
WHERE users.id IS NULL;
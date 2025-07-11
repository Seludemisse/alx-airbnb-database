-- Query: total bookings made by each user
SELECT
    user_id,
    COUNT(*) AS total_bookings
FROM
    bookings
GROUP BY
    user_id
ORDER BY
    total_bookings DESC;

-- Using ROW_NUMBER() for ranking
SELECT
    property_id,
    COUNT(*) AS total_bookings,
    ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) AS booking_rank
    
FROM
    bookings
GROUP BY
    property_id
ORDER BY
    booking_rank;

-- Using RANK() for ranking properties by total bookings
SELECT
    property_id,
    COUNT(*) AS total_bookings,
    RANK() OVER (ORDER BY COUNT(*) DESC) AS booking_rank
FROM
    bookings
GROUP BY
    property_id
ORDER BY
    booking_rank;
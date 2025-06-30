-- 🔢 Query 1: Total number of bookings made by each user
SELECT
    user_id,
    COUNT(*) AS total_bookings
FROM
    bookings
GROUP BY
    user_id;

-- 🏆 Query 2: Rank properties based on the number of bookings
SELECT
    property_id,
    COUNT(*) AS total_bookings,
    RANK() OVER (ORDER BY COUNT(*) DESC) AS booking_rank,
    ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) AS booking_row_number
FROM
    bookings
GROUP BY
    property_id;

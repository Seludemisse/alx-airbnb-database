# Complex Joins - ALX Airbnb Database

## Objective
Write complex SQL queries using different types of joins.

## Queries

### 1. INNER JOIN
Retrieve all bookings and the respective users:
```sql
SELECT bookings.id, bookings.property_id, users.id, users.name
FROM bookings
INNER JOIN users ON bookings.user_id = users.id;

# Task 1 - Practice Subqueries

## Objective
Demonstrate the use of both non-correlated and correlated subqueries to extract specific insights from the database.

---

##  1. Non-Correlated Subquery

**Task**: Retrieve all properties where the average review rating is greater than 4.0.

**Explanation**: This query uses a non-correlated subquery to calculate the average rating for each property in the `reviews` table and selects only those property IDs where the average is above 4.0.

**SQL**:
```sql
SELECT id, name
FROM properties
WHERE id IN (
    SELECT property_id
    FROM reviews
    GROUP BY property_id
    HAVING AVG(rating) > 4.0
);

# ALX Airbnb Database - Advanced SQL Tasks

## Task 2: Apply Aggregations and Window Functions

### Objective
Use SQL aggregation and window functions to analyze booking data.

### Queries

1. **Total number of bookings made by each user:**

```sql
SELECT
    user_id,
    COUNT(*) AS total_bookings
FROM
    bookings
GROUP BY
    user_id
ORDER BY
    total_bookings DESC;

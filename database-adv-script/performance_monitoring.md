# Performance Monitoring and Refinement

## Objective
To monitor and improve the performance of frequent queries in the Airbnb database clone.

---

## 1. Query Analysis

### Query 1
```sql
SELECT * FROM places WHERE city_id = '1';

Before Optimization:
EXPLAIN Output:
type: ALL
key: NULL
rows: 4800
Extra: Using where

2. Schema Optimization
To improve performance, we add an index:
CREATE INDEX idx_city_id ON places(city_id);

3. After Optimization
After Optimization
text
Copy code
EXPLAIN Output:
type: ref
key: idx_city_id
rows: 5
Extra: Using where
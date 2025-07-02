# Database Performance Monitoring Report

## Objective

Continuously monitor and refine database performance by analyzing query execution plans and making schema adjustments.

---

## Tools Used

- `EXPLAIN` / `EXPLAIN ANALYZE`
- `SHOW PROFILE`
- Index creation statements

---

## Queries Monitored

### Query 1 – Get bookings for a specific user

```sql
EXPLAIN SELECT * FROM bookings WHERE user_id = 'user_001';
```

**Issue:** Full table scan detected.

**Action:** Created index on `bookings.user_id`.

```sql
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
```

---

### Query 2 – Retrieve properties in a specific location

```sql
EXPLAIN SELECT * FROM properties WHERE location = 'Marrakech';
```

**Issue:** Table scan due to lack of index on `location`.

**Action:** Created index on `properties.location`.

```sql
CREATE INDEX idx_properties_location ON properties(location);
```

---

## Improvements Observed

- Queries that previously required full table scans now use indexes.
- Reduced execution time and CPU usage after applying indexing.
- Query planner shows use of indexed columns for filtering.

---

## Conclusion

Performance was significantly improved by:

- Monitoring high-frequency queries with `EXPLAIN`
- Applying targeted indexing to resolve slow scans
- Continuously refining schema based on query profiling

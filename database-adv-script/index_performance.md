# 📊 Indexing for Optimization

This document demonstrates how adding indexes to high-usage columns in the `users`, `bookings`, and `properties` tables improves query performance.

---

## 🎯 Identified High-Usage Columns

The following columns are frequently used in `WHERE`, `JOIN`, or `ORDER BY` clauses and are ideal candidates for indexing:

- `users.email`
- `bookings.user_id`
- `bookings.property_id`
- `properties.location`
- `properties.pricepernight`

---

## 🛠️ SQL: Creating Indexes

```sql
-- Index for users.email to speed up login lookups
CREATE INDEX idx_users_email ON users(email);

-- Index for bookings.user_id to improve user join/filter queries
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Index for bookings.property_id to improve property-based filters
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Index for properties.location to optimize location searches
CREATE INDEX idx_properties_location ON properties(location);

-- Index for properties.pricepernight to support price filtering
CREATE INDEX idx_properties_price ON properties(pricepernight);
```

---

## 🧪 Measuring Performance with EXPLAIN ANALYZE

You can use `EXPLAIN ANALYZE` to see how indexes affect query performance. For example:

```sql
-- Before creating indexes
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 123;

-- After creating indexes
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 123;
```

Compare the output to observe improvements in cost and execution time.

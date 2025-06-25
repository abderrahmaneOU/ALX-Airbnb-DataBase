# Database Normalization – Airbnb Project

## Objective

To ensure our Airbnb database schema is in **Third Normal Form (3NF)** by eliminating redundancy, ensuring data integrity, and creating efficient relationships.

---

## Step 1: First Normal Form (1NF)

- Each table has a **primary key**.
- Each column contains **atomic values** (no repeating groups or arrays).
- Each record is **unique**.

✅ All entities (User, Property, Booking, Payment, Review, Message) comply with 1NF.

---

## Step 2: Second Normal Form (2NF)

- Table is in 1NF.
- **No partial dependency** on part of a composite key (not applicable here, since all PKs are single-column UUIDs).
- All non-key attributes are fully functionally dependent on the primary key.

✅ No partial dependencies found. All attributes are fully dependent on their respective PKs.

---

## Step 3: Third Normal Form (3NF)

- Table is in 2NF.
- **No transitive dependency** (non-key attribute depending on another non-key attribute).

✅ No transitive dependencies observed.

---

## Final Result

The database schema meets all conditions of **3NF**:

- Each entity has a well-defined primary key.
- All foreign key relationships are clearly established.
- No repeating data, partial, or transitive dependencies.
- ENUMs are used to limit category-type attributes (e.g., user role, booking status, payment method).

---

## Summary

The schema was designed carefully and already adhered to 3NF. No structural changes were needed during normalization. The current design ensures:

- High data integrity
- Low redundancy
- Efficient and scalable structure

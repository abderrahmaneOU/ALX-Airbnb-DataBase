# Query Optimization Report

## 🎯 Objective
Improve the performance of a query retrieving bookings with user, property, and payment details.

## 🔍 Initial Query Analysis
- Performed 3 JOINs including payments
- Used EXPLAIN to analyze performance
- Detected full table scans due to lack of indexes

## ⚡ Optimization Steps
- Changed JOIN with payments to LEFT JOIN (not all bookings have payments)
- Ensured indexes on `user_id`, `property_id`, and `booking_id`
- Reduced retrieved columns to only essential fields

## 📈 Result
- Improved execution time
- Lowered query cost in EXPLAIN output

-- Sample Data Seeding for Airbnb Database

-- Users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
  ('uuid-001', 'Alice', 'Smith', 'alice@example.com', 'hashed_pw1', '1234567890', 'guest'),
  ('uuid-002', 'Bob', 'Johnson', 'bob@example.com', 'hashed_pw2', '0987654321', 'host'),
  ('uuid-003', 'Carol', 'Williams', 'carol@example.com', 'hashed_pw3', '1112223333', 'admin');

-- Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
  ('prop-001', 'uuid-002', 'Sunny Apartment', 'A bright and cozy apartment', 'Paris', 100.00),
  ('prop-002', 'uuid-002', 'Modern Loft', 'Spacious loft in city center', 'New York', 150.00);

-- Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
  ('book-001', 'prop-001', 'uuid-001', '2025-07-01', '2025-07-05', 400.00, 'confirmed'),
  ('book-002', 'prop-002', 'uuid-001', '2025-08-10', '2025-08-12', 300.00, 'pending');

-- Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
  ('pay-001', 'book-001', 400.00, 'credit_card'),
  ('pay-002', 'book-002', 300.00, 'paypal');

-- Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
  ('rev-001', 'prop-001', 'uuid-001', 5, 'Amazing stay! Very clean and great host.'),
  ('rev-002', 'prop-002', 'uuid-001', 4, 'Nice loft, great location.');

-- Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
  ('msg-001', 'uuid-001', 'uuid-002', 'Hi, I have a question about the property.'),
  ('msg-002', 'uuid-002', 'uuid-001', 'Sure! What would you like to know?');

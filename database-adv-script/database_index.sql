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

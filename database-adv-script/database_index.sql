-- Indexes for User table
CREATE INDEX idx_user_email ON users(email);

-- Indexes for Booking table
CREATE INDEX idx_booking_user_id ON bookings(user_id);
CREATE INDEX idx_booking_property_id ON bookings(property_id);
CREATE INDEX idx_booking_start_date ON bookings(start_date);

-- Indexes for Property table
CREATE INDEX idx_property_location ON properties(location);
CREATE INDEX idx_property_host_id ON properties(host_id);

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    user_type VARCHAR(10) CHECK (user_type IN ('Buyer', 'Seller'))
);


CREATE TABLE properties (
    id SERIAL PRIMARY KEY,
    type VARCHAR(50) NOT NULL,
    location VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    seller_id INT REFERENCES users(id) ON DELETE CASCADE
);

INSERT INTO users (name, user_type) VALUES
('Mullai', 'Seller'),
('Shaulini', 'Seller'),
('Harini', 'Seller');

INSERT INTO users (name, user_type) VALUES
('DD', 'Buyer'),
('Swetha', 'Buyer'),
('Sridhar', 'Buyer');

INSERT INTO properties (type, location, price, seller_id) VALUES
('Apartment', 'New York', 250000.00, 1),
('Villa', 'Los Angeles', 500000.00, 1),
('Commercial', 'Chicago', 750000.00, 2),
('Residential', 'Houston', 350000.00, 2),
('Apartment', 'Miami', 275000.00, 3),
('Villa', 'San Francisco', 650000.00, 3),
('Commercial', 'Boston', 800000.00, 1),
('Residential', 'Seattle', 400000.00, 2),
('Apartment', 'Denver', 230000.00, 3),
('Villa', 'Austin', 550000.00, 1);


SELECT * FROM properties;

SELECT * FROM properties WHERE type = 'Apartment';

SELECT * FROM properties WHERE location = 'New York';


-- SELECT * FROM properties p
-- JOIN users u ON p.seller_id = u.id
-- WHERE u.name = 'Mullai';

SELECT * FROM users WHERE user_type = 'Buyer';





-- File that was used to generate dosa.db!

CREATE TABLE Dosa_Place (
    id INTEGER PRIMARY KEY,
    name TEXT,
    location TEXT,
    popularity INTEGER
);

-- Insert data into Dosa_Places
INSERT INTO Dosa_Place (name, location, popularity) VALUES
('Vidyarthi Bhavan', 'Basavanagudi', 9),
('CTR (Sri Sagar)', 'Malleshwaram', 8),
('Mavalli Tiffin Room (MTR)', 'Lalbagh', 9),
('Janatha Hotel', 'Malleshwaram', 7),
('Shri Sagar Dosa', 'Koramangala', 6),
('Rameshwaram Cafe', 'Indiranagar', 8),
('Dosa Point', 'JP Nagar', 6),
('Taaza Thindi', 'Jayanagar', 10),
('Asha Tiffins', 'Vijayanagar', 8),
('Dwaraka Bhavan', 'Rajajinagar', 7);

CREATE TABLE Signature_Dish (
    id INTEGER PRIMARY KEY,
    dish_name TEXT,
    price DECIMAL(5, 2),
    dosa_place_id INTEGER,
    FOREIGN KEY (dosa_place_id) REFERENCES Dosa_Place(id)
);

-- Insert data into Signature_Dishes
INSERT INTO Signature_Dish (dish_name, price, dosa_place_id) VALUES
('Masala Dosa', 45.00, 1),  -- Vidyarthi Bhavan
('Benne Masala Dosa', 50.00, 2),  -- CTR
('Rava Dosa', 60.00, 3),  -- MTR
('Plain Dosa', 40.00, 4),  -- Janatha Hotel
('Set Dosa', 55.00, 5),  -- Shri Sagar Dosa
('Ghee Roast Dosa', 70.00, 6),  -- Rameshwaram Cafe
('Cheese Dosa', 75.00, 7),  -- Dosa Point
('Butter Masala Dosa', 60.00, 8),  -- Taaza Thindi
('Onion Dosa', 50.00, 9),  -- Asha Tiffins
('Benne Khali Dosa', 45.00, 10);  -- Dwaraka Bhavan

CREATE TABLE Review (
    id INTEGER PRIMARY KEY,
    reviewer_name TEXT,
    rating INTEGER,  -- Rating out of 5
    comment TEXT,
    dosa_place_id INTEGER,
    FOREIGN KEY (dosa_place_id) REFERENCES Dosa_Place(id)
);

-- Insert data into Reviews
INSERT INTO Review (reviewer_name, rating, comment, dosa_place_id) VALUES
('Rohit Sharma', 5, 'Best masala dosa in Bangalore!', 1),  -- Vidyarthi Bhavan
('Sneha Patil', 4, 'Loved the Benne Masala Dosa, crispy and delicious!', 2),  -- CTR
('Vikas Kumar', 5, 'The rava dosa was incredible. A must-try!', 3),  -- MTR
('Pooja Rao', 3, 'Plain dosa was decent, nothing special.', 4),  -- Janatha Hotel
('Ravi Menon', 4, 'Set dosa was soft and tasty, will visit again!', 5),  -- Shri Sagar Dosa
('Aarti Nair', 5, 'Ghee Roast Dosa was perfect!', 6),  -- Rameshwaram Cafe
('Nikita Verma', 2, 'Cheese dosa was overpriced for the taste.', 7),  -- Dosa Point
('Ajay Singh', 5, 'Taaza Thindi never disappoints! Butter dosa is amazing.', 8),  -- Taaza Thindi
('Meera Pillai', 4, 'Onion dosa was great, nice ambience too.', 9),  -- Asha Tiffins
('Sanjay Reddy', 3, 'Benne Khali Dosa was average, expected more.', 10);  -- Dwaraka Bhavan


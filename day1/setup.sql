-- Create the books table
CREATE TABLE books (
    book_id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    author TEXT NOT NULL,
    genre TEXT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    stock INTEGER NOT NULL
);

-- Insert sample data into the books table
INSERT INTO books (title, author, genre, price, stock) VALUES
    ('To Kill a Mockingbird', 'Harper Lee', 'Fiction', 12.99, 50),
    ('1984', 'George Orwell', 'Science Fiction', 10.99, 75),
    ('Pride and Prejudice', 'Jane Austen', 'Romance', 9.99, 60),
    ('The Catcher in the Rye', 'J.D. Salinger', 'Fiction', 11.99, 45),
    ('The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 14.99, 80);

-- Create the reviews table
CREATE TABLE reviews (
    review_id INTEGER PRIMARY KEY,
    book_id INTEGER,
    customer_name TEXT NOT NULL,
    rating INTEGER NOT NULL,
    comment TEXT,
    review_date DATE NOT NULL,
    FOREIGN KEY (book_id) REFERENCES books (book_id)
);

-- Insert sample data into the reviews table
INSERT INTO reviews (book_id, customer_name, rating, comment, review_date) VALUES
    (1, 'John Doe', 5, 'A classic that everyone should read!', '2023-01-15'),
    (1, 'Jane Smith', 4, 'Powerful story, but a bit slow at times.', '2023-02-20'),
    (2, 'Mike Johnson', 5, 'Chilling and thought-provoking.', '2023-03-10'),
    (3, 'Emily Brown', 4, 'A delightful romance with witty dialogue.', '2023-04-05'),
    (4, 'Chris Lee', 3, 'Interesting, but I found the protagonist annoying.', '2023-05-12'),
    (5, 'Sarah Wilson', 5, 'An enchanting adventure! Loved every page.', '2023-06-18');
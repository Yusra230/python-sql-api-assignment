-- Create the library database
CREATE DATABASE IF NOT EXISTS library;

-- Select the library database
USE library;

-- Create the books table
CREATE TABLE IF NOT EXISTS books (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    year INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);

-- Insert 8 book records
INSERT INTO books (title, author, year, price) VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', 1925, 450.00),
('To Kill a Mockingbird', 'Harper Lee', 1960, 550.00),
('1984', 'George Orwell', 1949, 600.00),
('Pride and Prejudice', 'Jane Austen', 1813, 400.00),
('The Hobbit', 'J.R.R. Tolkien', 1937, 750.00),
('The Alchemist', 'Paulo Coelho', 1988, 520.00),
('Animal Farm', 'George Orwell', 1945, 350.00),
('Clean Code', 'Robert C. Martin', 2008, 900.00);

-- Display books priced above 500
SELECT * FROM books
WHERE price > 500;

-- Display all books, from highest price to lowest price
SELECT * FROM books
ORDER BY price DESC;

-- Count the total number of books
SELECT COUNT(*) AS total_books
FROM books;

-- Update the price of one book using WHERE
UPDATE books
SET price = 650.00
WHERE id = 1;

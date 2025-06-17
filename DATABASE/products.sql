-- Create and use the northwind database
CREATE DATABASE IF NOT EXISTS northwind;
USE northwind;

-- Disable foreign key checks to avoid issues during drop
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS inventory_transactions;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS categories;
SET FOREIGN_KEY_CHECKS = 1;

-- Create categories table
CREATE TABLE categories (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(255) NOT NULL
);

-- Create products table with a foreign key to categories
CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(255) NOT NULL,
    category_id INT,
    unit_price DECIMAL(10,2),
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

-- Optional: recreate inventory_transactions
CREATE TABLE inventory_transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    quantity INT,
    transaction_date DATETIME,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Insert sample categories
INSERT INTO categories (category_id, category_name) VALUES
(1, 'Electronics'),
(2, 'Office Supplies'),
(3, 'Kitchen'),
(4, 'Furniture');

-- Insert sample products
INSERT INTO products (product_name, category_id, unit_price) VALUES
('Laptop', 1, 999.99),
('Desk Chair', 4, 149.99),
('Coffee Maker', 3, 79.99);

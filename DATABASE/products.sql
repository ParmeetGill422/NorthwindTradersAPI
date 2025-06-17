USE northwind;

SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS inventory_transactions;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS categories;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    category_id INT,
    unit_price DECIMAL(10,2),
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

-- Insert sample categories
INSERT INTO categories (category_id, category_name) VALUES
(101, 'Electronics'),
(102, 'Kitchen'),
(103, 'Furniture');

-- Insert sample products
INSERT INTO products (product_id, product_name, category_id, unit_price) VALUES
(1, 'Laptop', 101, 999.99),
(2, 'Coffee Maker', 102, 79.99),
(3, 'Desk Chair', 103, 149.99);

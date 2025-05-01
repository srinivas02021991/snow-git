-- Create Product table
CREATE OR REPLACE TABLE product (
    product_id INT PRIMARY KEY,
    product_name STRING,
    category STRING,
    price DECIMAL(10,2)
);

-- Create Sales table
CREATE OR REPLACE TABLE sales (
    sale_id INT PRIMARY KEY,
    product_id INT,
    sale_date DATE,
    quantity INT,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);


-- Insert into Product
INSERT INTO product (product_id, product_name, category, price) VALUES
(1, 'Laptop', 'Electronics', 750.00),
(2, 'Smartphone', 'Electronics', 500.00),
(3, 'Desk Chair', 'Furniture', 120.00),
(4, 'Notebook', 'Stationery', 5.50),
(5, 'Water Bottle', 'Accessories', 15.00);

-- Insert into Sales
INSERT INTO sales (sale_id, product_id, sale_date, quantity, total_amount) VALUES
(101, 1, '2024-12-01', 2, 1500.00),
(102, 2, '2024-12-02', 1, 500.00),
(103, 3, '2024-12-03', 3, 360.00),
(104, 4, '2024-12-04', 10, 55.00),
(105, 5, '2024-12-05', 4, 60.00);

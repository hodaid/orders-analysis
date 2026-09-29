CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO customers (customer_id, name, city) VALUES
(1, 'Ali', 'Islamabad'),
(2, 'Bilal', 'Lahore'),
(3, 'Sara', 'Karachi'),
(4, 'Ahmed', 'Islamabad'),
(5, 'Zainab', 'Lahore'),
(6, 'Usman', 'Peshawar');

INSERT INTO orders (order_id, customer_id, amount) VALUES
(101, 1, 4500),
(102, 1, 7200),
(103, 2, 5400),
(104, 2, 4400),
(105, 3, 3000),
(106, 4, 8000),
(107, 5, 7200),
(108, 1, 1500),
(109, 2, 2000),
(110, 4, 1000);

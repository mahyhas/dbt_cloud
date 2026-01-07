CREATE OR REPLACE TABLE ORDERS (
    ORDER_ID INT PRIMARY KEY,
    CUSTOMER_ID INT,
    ORDER_DATE TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP(),
    TOTAL_AMOUNT NUMBER(12, 2),
    STATUS VARCHAR(20),
    SHIPPING_CITY VARCHAR(50),
    PAYMENT_METHOD VARCHAR(30)
);


INSERT INTO ORDERS (ORDER_ID, CUSTOMER_ID, ORDER_DATE, TOTAL_AMOUNT, STATUS, SHIPPING_CITY, PAYMENT_METHOD) VALUES
(101, 5001, '2025-12-01 10:30:00', 150.50, 'Shipped', 'New York', 'Credit Card'),
(102, 5002, '2025-12-01 11:45:00', 89.99, 'Delivered', 'Los Angeles', 'PayPal'),
(103, 5003, '2025-12-02 09:15:00', 210.00, 'Pending', 'Chicago', 'Credit Card'),
(104, 5004, '2025-12-02 14:20:00', 45.00, 'Shipped', 'Houston', 'Apple Pay'),
(105, 5005, '2025-12-03 16:10:00', 320.75, 'Delivered', 'Phoenix', 'Credit Card'),
(106, 5006, '2025-12-04 08:05:00', 12.50, 'Cancelled', 'Philadelphia', 'Debit Card'),
(107, 5007, '2025-12-04 12:00:00', 99.00, 'Shipped', 'San Antonio', 'PayPal'),
(108, 5008, '2025-12-05 15:30:00', 1500.00, 'Processing', 'San Diego', 'Bank Transfer'),
(109, 5009, '2025-12-06 10:45:00', 75.25, 'Delivered', 'Dallas', 'Credit Card'),
(110, 5010, '2025-12-07 11:00:00', 22.00, 'Shipped', 'San Jose', 'Apple Pay'),
(111, 5011, '2025-12-08 09:30:00', 115.60, 'Delivered', 'Austin', 'Credit Card'),
(112, 5012, '2025-12-09 14:15:00', 300.00, 'Pending', 'Jacksonville', 'PayPal'),
(113, 5013, '2025-12-10 16:45:00', 55.00, 'Shipped', 'Fort Worth', 'Debit Card'),
(114, 5014, '2025-12-11 08:20:00', 88.40, 'Delivered', 'Columbus', 'Credit Card'),
(115, 5015, '2025-12-12 13:10:00', 120.00, 'Shipped', 'Charlotte', 'Apple Pay'),
(116, 5016, '2025-12-13 17:00:00', 450.25, 'Processing', 'San Francisco', 'Credit Card'),
(117, 5017, '2025-12-14 10:05:00', 35.99, 'Cancelled', 'Indianapolis', 'PayPal'),
(118, 5018, '2025-12-15 12:40:00', 210.50, 'Delivered', 'Seattle', 'Debit Card'),
(119, 5019, '2025-12-16 09:15:00', 14.95, 'Shipped', 'Denver', 'Credit Card'),
(120, 5020, '2025-12-17 14:55:00', 625.00, 'Delivered', 'Washington', 'Bank Transfer');
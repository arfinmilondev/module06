-- Write a SQL query to retrieve the product name, quantity, and total amount for each order item. 
-- Display the result in ascending order of the order ID.


SELECT oi.order_id, p.product_name, oi.quantity, (oi.quantity * p.price) AS total_amount
FROM OrderItems oi
JOIN Products p ON oi.product_id = p.product_id
ORDER BY oi.order_id ASC;

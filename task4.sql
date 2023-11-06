-- Write a SQL query to retrieve the top 5 customers who have made the highest total purchase amount.
--  Display the customer name along with the total purchase amount in descending order of the purchase amount.



SELECT c.customer_name, SUM(p.purchase_amount) AS total_purchase_amount
FROM Customers c
JOIN Purchases p ON c.customer_id = p.customer_id
GROUP BY c.customer_name
ORDER BY total_purchase_amount DESC
LIMIT 5;
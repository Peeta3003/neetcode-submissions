-- Write your query below
SELECT customers.name
FROM customers
FULL OUTER JOIN orders ON customers.id = orders.customer_id
WHERE customers.id IS NULL OR orders.customer_id IS NULL;
/*
 * Use a JOIN to list the total paid by each customer.
 * List the customers alphabetically by last name.
 * Use tables payment and customer.
 */

SELECT c.customer_id, c.first_name, c.last_name, p.sum
FROM customer c
JOIN (
    SELECT customer_id, SUM(amount) as sum
    FROM payment
    GROUP BY customer_id
) p ON c.customer_id = p.customer_id
ORDER BY last_name;

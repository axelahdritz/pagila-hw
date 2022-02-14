/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */

SELECT s.first_name, s.last_name, p.sum
FROM (
    SELECT staff_id, SUM(amount) AS sum 
    FROM payment
    WHERE payment_date BETWEEN '2020-01-01' AND '2020-02-01'
    GROUP BY staff_id
) p JOIN staff s ON p.staff_id=s.staff_id
ORDER BY last_name DESC;


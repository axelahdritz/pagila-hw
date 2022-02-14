/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title alphabetically.
 */

SELECT f.film_id, f.title, i.count
FROM film f
JOIN (
    SELECT film_id, COUNT(film_id) AS count
    FROM inventory
    GROUP BY film_id
) i ON f.film_id = i.film_id
WHERE title LIKE 'H%'
ORDER BY title DESC;


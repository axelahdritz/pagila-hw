/*
 * Use a JOIN to list all films in the "Family" category.
 * Use table category, film_category, and film.
 */

SELECT f.title
FROM film_category fc
JOIN (
    SELECT category_id, name
    FROM category
) c ON fc.category_id=c.category_id
JOIN (
    SELECT film_id, title
    FROM film
) f ON fc.film_id=f.film_id
WHERE c.name='Family';

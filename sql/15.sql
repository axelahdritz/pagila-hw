/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */

SELECT c.name, f.sum
FROM category c
JOIN (
    SELECT fc.category_id, SUM(l.language_id) AS sum
    FROM film_category fc
    JOIN (
        SELECT film_id, language_id
        FROM film
    ) l ON l.film_id=fc.film_id
    GROUP BY fc.category_id
) f ON f.category_id=c.category_id;

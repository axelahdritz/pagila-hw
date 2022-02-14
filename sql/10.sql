/*
 * Use a JOIN to list each film and the number of actors who are listed for that film.
 * Use tables film and film_actor.
 */

SELECT film.title, film.film_id, a.actor_count
FROM film
JOIN (
   SELECT film_id, COUNT(actor_id) AS actor_count
   FROM film_actor
   GROUP BY film_id) a ON a.film_id = film.film_id
ORDER BY actor_count, title;

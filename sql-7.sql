SELECT a1.first_name, a1.last_name
FROM actor a1
WHERE NOT EXISTS (
    SELECT 1
    FROM actor a2
    WHERE a1.last_name = a2.last_name AND a1.actor_id <> a2.actor_id
);


SELECT last_name
FROM actor
GROUP BY last_name
HAVING COUNT(*) > 1;

SELECT staff_id, COUNT(rental_id) AS rental_count
FROM rental
GROUP BY staff_id;


SELECT release_year, COUNT(film_id) AS number_of_films
FROM film
GROUP BY release_year
ORDER BY release_year;

SELECT rating, COUNT(film_id) AS film_count
FROM film
GROUP BY rating
ORDER BY film_count DESC;

SELECT rating, ROUND(AVG(length), 2) AS average_length
FROM film
GROUP BY rating
HAVING AVG(length) > 120;



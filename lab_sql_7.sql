USE Sakila;

SELECT DISTINCT last_name
FROM actor
WHERE last_name NOT IN (
  SELECT last_name
  FROM actor
  GROUP BY last_name
  HAVING COUNT(*) > 1
)
ORDER BY last_name;



SELECT last_name
FROM actor
WHERE last_name IN (
  SELECT last_name
  FROM actor
  GROUP BY last_name
  HAVING COUNT(*) > 1
)
ORDER BY last_name;


SELECT staff_id, COUNT(*) as num_rentals
FROM rental
GROUP BY staff_id
ORDER BY num_rentals DESC;


SELECT release_year, COUNT(*) as num_films
FROM film
GROUP BY release_year
ORDER BY release_year;

SELECT rating, COUNT(*) as num_films
FROM film
GROUP BY rating
ORDER BY rating;

SELECT rating, ROUND(AVG(length), 2) AS avg_length
FROM film
GROUP BY rating
ORDER BY rating;

SELECT rating, AVG(length) AS avg_length
FROM film
GROUP BY rating
HAVING AVG(length) > 120
ORDER BY avg_length DESC;


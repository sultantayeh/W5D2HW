-- Query to count actors with the last name 'Wahlberg'
SELECT COUNT(*) AS wahlberg_count
FROM actor
WHERE last_name = 'Wahlberg';

-- Query to count payments between $3.99 and $5.99
SELECT COUNT(*) AS payment_count
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

-- Query to find the film that the store has the most copies of
SELECT film_id, COUNT(film_id) AS film_count
FROM inventory
GROUP BY film_id
ORDER BY film_count DESC
LIMIT 1;

-- Query to count customers with the last name 'William'
SELECT COUNT(*) AS william_count
FROM customer
WHERE last_name = 'William';

-- Query to find the employee who made the most rentals
SELECT staff_id, COUNT(rental_id) AS rental_count
FROM rental
GROUP BY staff_id
ORDER BY rental_count DESC
LIMIT 1;

-- Query to count distinct district names
SELECT COUNT(DISTINCT district) AS distinct_districts
FROM address;

-- Query to find the film with the most actors
SELECT film_id, COUNT(actor_id) AS actor_count
FROM film_actor
GROUP BY film_id
ORDER BY actor_count DESC
LIMIT 1;

-- Query to count customers with last names ending in 'es' from store_id 1
SELECT COUNT(*) AS es_count
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es';

-- Query to count different payment amounts that had rentals above 250 for certain customers
SELECT amount, COUNT(rental_id) AS rental_count
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING rental_count > 250;

-- Query to find the number of rating categories
SELECT COUNT(DISTINCT rating) AS rating_categories
FROM film;

-- Query to find the rating with the most movies
SELECT rating, COUNT(*) AS movie_count
FROM film
GROUP BY rating
ORDER BY movie_count DESC
LIMIT 1;

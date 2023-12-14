-- 1. How many actors are there with the last name ‘Wahlberg’?
SELECT *
FROM actor
WHERE last_name 
LIKE 'Wahlberg'
-- total Wahlbergs =2

-- 2. How many payments were made between $3.99 and $5.99?
SELECT customer_id, amount
FROM payments
WHERE amount BETWEEN 3.99 AND 5.99
--None

-- 3. What film does the store have the most of? (search in inventory)
SELECT *
FROM film

-- 4. How many customers have the last name ‘William’?
select *
from customer
where last_name
like 'Williams'
-- no 'William but there is a williams

-- 5. What store employee (get the id) sold the most rentals?
select rental_id, staff_id 
from sale_invoice
-- staff 1 sold more

-- 6. How many different district names are there?
select COUNT(district)
from address
--603 districts


-- 7. What film has the most actors in it? (use film_actor table and get film_id)
select avg(film_id)
from film_actor
WHERE actor_id 
--
-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
select count(last_name)
from customer
where last_name like '%es'
-- 21 last names ending in 'es'

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
select amount, count(amount)
from payment
where customer_id between 380 and 430
group by amount
having count(amount) > 250
-- where customer_id between 380 and 430
-- GROUP BY customer_id
-- having sum(amount) > 250
-- order by customer_id


-- 10. Within the film table, how many rating categories are there? And what rating has the most
select count(DISTINCT rating), sum( DISTINCT rating)
from film 
-- 5 categories/NC-17 is the most shown
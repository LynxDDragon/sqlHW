--1) How many actors are there with the last name 'Wahlberg'?
select count(last_name)
from actor
where last_name like 'Wahlberg'

--2) How many payments were made between $3.99 and $5.99?

select count(amount)
from payment
where amount between 3.99 and 5.99;

--3) What film does the store have most of? (Search in Inventory)

select film_id , count(inventory_id) as copies
from inventory
group by film_id 
order by copies desc
limit 1;

--4) How many custumers have the last name 'William'?

select count(last_name)
from customer
where last_name like 'William'

--5) What store employee (get the id) sold the most rentals?

select staff_id, count(payment_id) as sales
from payment 
group by staff_id 
order by sales desc

--6) How many different district names are there?

SELECT COUNT(DISTINCT district)
FROM address;

--7) What film has the most actors in it? (use film_actor table and get film_id)

select film_id, count(actor_id) as most_actors
from film_actor
group by film_id
order by most_actors desc
limit 1;

--8) From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT store_id, COUNT(*) AS amount_customers_es
FROM customer 
WHERE store_id = 1 AND last_name LIKE '%e'
GROUP BY store_id;




--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)

SELECT COUNT(amount) AS answer
FROM payment 
WHERE customer_id BETWEEN 380 AND 430
HAVING COUNT(rental_id) > 250;


--10. Within the film table, how many rating categories are there? And what rating has the most
--movies total?

SELECT COUNT(DISTINCT rating) AS amount_of_rating_categories
FROM film
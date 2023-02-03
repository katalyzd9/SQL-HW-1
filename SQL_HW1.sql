-- Hello World SQL query, SELECT all records from the actor table
select * from actor;

-- Query for first_name and last_name in the actor table 
select first_name, last_name
from actor;

--Query for a first_name that equals Nick using the WHERE clause
select first_name, last_name
from actor 
where first_name = 'Nick';

-- Query for a first_name that is equal to Nick using the LIKE and WHERE clauses
select first_name, last_name
from actor 
where first_name like 'Nick';

-- Query for all first_name data that starts with a J using LIKE and WHERE -- using a wildcard
select first_name, actor_id
from actor 
where first_name like 'J%';

-- Query for all first_ame data that starts with K and has letters after the K using LIKE and WHERE clauses using underscore
select first_name, last_name, actor_id
from actor 
where first_name like 'K__'

-- Query for all first_name data that starts with a K and ends with a th
-- using LIKE and WHERE and using BOTH wildcard and underscore
select first_name, last_name, actor_id
from actor 
where first_name like 'K__%th'

-- Comparing operators are:
-- Greather than >
-- Less than <
-- Greather than or equal to <=
-- Less than or equal to <= 
-- Not equal <>

-- Explore Data with SELECT all query (specific to changing into a new table)
select *
from payment; 

-- Query for data for customers who paid an amount GREATER than 2
select customer_id, amount
from payment
where amount > 2.00;


-- Query for data that shows customers who paid an amount LESS than $7.99
select customer_id, amount
from payment
where amount < 7.99

-- Query for data that shows customers who paid an amount LESS than or EQUAL to $7.99;
select customer_id, amount
from payment
where amount <= 7.99;

-- Query for data that shows customers who paid an amount GREATER than or EQUAL to 2.00 in ASCENDING order 
select customer_id, amount
from payment
where amount >= 2.00
order by amount asc;

-- Query for the data that shows customers who paid an amount BETWEEN 2.00 and 7.99, using the BETWEEN with the AND clause
select customer_id, amount
from payment
where amount between 2.00 and 7.99;

-- Query for data that shows customers who piad an amount NOT EQUAL to 0.00
-- Ordered in DESCENDING order
select customer_id, amount
from payment 
where amount <> 0.00
order by amount desc;

-- SQL aggregations: SUM, AVG, COUNT, MIN, MAX
-- Query to display the sum of amount paid that are greater than 5.99
select SUM(amount)
from payment
where amount > 5.99;

-- Query to display the average of amounts paid that are greater than 5.99
select AVG(amount)
from payment
where amount > 5.99

-- Query to display the count of amounts paid that are greather than 5.99
select COUNT (amount) as  elephant
from payment
where amount > 5.99

-- Query to display the count of unique amounts paid that are greather than 5.99
select COUNT(distinct amount)
from payment
where amount > 5.99;

-- Query to display minimum amount greather than 7.99
select MIN(amount) as Min_Num_Payments
from payment
where amount > 7.99;

-- Query to display max amount greather than 7.99
select MAX(amount) as Min_Num_Payments
from payment
where amount > 7.99;

-- Query to display all amounts (as a demo of group by)
select *
from payment
where amount = 7.99;

-- Query to display different amounts grouped together and count the amounts
select amount, SUM (amount)
from payment 
group by amount
order by amount; 

-- Query to display customer_ids with the summed amount for each customer_id
select customer_id, SUM(amount)
from payment
group by customer_id
order by SUM(amount) desc;

-- Query to display customer_ids with the summed amount for each customer_id
-- Seperate example of group by 
select customer_id, amount
from payment
group by amount, customer_id 
order by customer_id desc;

-- Query to explore the data inside of the customer table
select * from customer;

-- Query to display customer IDs that show up more than 5 times 
-- Group by the customer's email
select COUNT (customer_id), email
from customer c where email like '__.w%'
group by email
having COUNT (customer_id) > 0;

--Homework

-- Question 1: How many actors are there with the last name 'Wahlberg'? 
-- Answer: 2

select last_name
from actor
where last_name like 'Wahlberg';



-- Question 2: How many payments were made between $3.99 and $5.99?
-- Answer: 4802
select customer_id, amount
from payment
where amount between 3.99 and 5.99; 

-- Question 3: What film does the store have the most of?
-- Answer: (Multple. Please see code)

select count(*), film_id
from inventory
group by film_id
having count(*) > 7;


-- Question 4: How many customers have the last name 'William?'
-- Answer: 0
select last_name
from customer c
where last_name like 'William'

-- Question 5: What store employee (get the id) sold the most rentals?
-- Answer: 341
select customer_id, SUM(amount)
from payment
group by customer_id
order by MAX(amount) desc;

-- Question 6: How many different district names are there?
-- Answer: 378
select count(distinct district)
from address;

-- Question 7: What film has the most actors in it? (use film_actor table and get film_id)
-- Answer: Film ID 508

select count(*), film_id
from film_actor
group by film_id
order by count(*) desc;


-- Question 8: From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
-- Answer: 13
select store_id, last_name
from customer
where last_name like '%es'
and store_id = 1;


-- Question 9: How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with kids between 380 and 430? (use group by and having > 250)
-- Answer: 3

	select count(*), amount
	from payment
	where customer_id > 380 and customer_id < 430
	group by amount
	having count(*) > 250

-- Question 10: Within the film table, how many rating categories are there? And what rating has the most movies total?
-- Answer: 5, PG

select count(distinct rating)
from film;

select rating, count(*) 
from film
group by rating
order by count(*) desc;

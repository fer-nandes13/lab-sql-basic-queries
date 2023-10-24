USE sakila;
#1 Display all available tables in the Sakila database.
SHOW Tables FROM Sakila;
#2 Retrieve all the data from the tables actor, film and customer.
SELECT *
FROM customer;
SELECT *
FROM film;
SELECT *
FROM actor;
#3Retrieve the following columns from their respective tables
#3.1
SELECT title FROM film;
#3.2
SELECT name FROM sakila.language;
#3.3
SELECT first_name FROM sakila.staff;
#4 Retrieve unique release years
SELECT distinct release_year FROM sakila.film;
# 5 Counting records for database insights:
#5.1 Determine the number of stores that the company has.
SELECT COUNT(*)
FROM sakila.store;
#5.2 Determine the number of employees that the company has
SELECT COUNT(*)
FROM sakila.staff;
#5.3 Determine how many films are available for rent and how many have been rented.
SELECT COUNT(*)
FROM sakila.rental; 
# There are 4581 films available to rent and 16044 have been rented. The sum gives us the total number of films in this club video which is 20625
SELECT COUNT(*)
FROM sakila.inventory;
SELECT COUNT(*) rental_date
FROM rental;
SELECT COUNT(*) return_date
FROM rental;

# 5.4 Determine the number of distinct last names of the actors in the database.
SELECT distinct last_name
FROM sakila.actor;
SELECT COUNT(DISTINCT last_name) AS distinct_last_names_count
FROM actor;
#There 121 unique last numbers of actors

#6 Retrieve the 10 longest films
SELECT *
FROM film
ORDER BY length DESC
LIMIT 10;

#7 Use filtering techniques in order to:
SELECT *
FROM actor
WHERE first_name = 'SCARLETT';






/*
Junior staff member in Calgary 
*/

SELECT employee_id, CONCAT(first_name, ' ', last_name) as name, levels
FROM employee
WHERE city='Calgary'
ORDER BY levels DESC
LIMIT 1;

/*
Top 5 city with the  most invoices in The USA
*/
SELECT billing_city, COUNT(*) as count
FROM invoice
WHERE billing_country='USA'
GROUP BY billing_city
ORDER BY count DESC
LIMIT 5;

/*
Quantity of invoices grouped by country
*/
SELECT billing_country, COUNT(*) as count
FROM invoice
GROUP BY billing_country
ORDER BY count DESC;

/*
The sum of values of total invoice for Portugal, Finland, Spain
*/
SELECT billing_country, SUM(total) as sum_total 
FROM invoice
WHERE billing_country IN('Portugal', 'Finland', 'Spain')
GROUP BY billing_country
ORDER BY sum_total DESC;

/*
Which city has the highest sum of invoice total? It will be the place for Music Festival
*/
SELECT billing_city, SUM(total) AS sum_total
FROM invoice
GROUP BY billing_city
ORDER BY sum_total DESC;

/*
Top 10 customers, who have spent the most money
*/
SELECT customer_id, first_name, last_name, SUM(total) AS total_spending
FROM customer
JOIN invoice USING(customer_id)
GROUP BY customer.customer_id
ORDER BY total_spending DESC
LIMIT 10;

/*
Customers who are listeners of metal style
*/
SELECT DISTINCT customer_id, CONCAT(first_name,' ', last_name), email
FROM customer
JOIN invoice USING(customer_id)
JOIN invoice_line USING(invoice_id)
WHERE track_id IN(SELECT track_id
				FROM track
				JOIN genre USING(genre_id)
				WHERE genre.name='Metal')
ORDER BY email;

/*
10 rock groups, who have written the most rock music in our dataset
*/
SELECT artist.artist_id, artist.name, COUNT(*) AS quantity_of_songs
FROM track
JOIN album USING(album_id)
JOIN artist USING(artist_id)
JOIN genre USING(genre_id)
WHERE genre.name='Rock'
GROUP BY artist.artist_id
ORDER BY quantity_of_songs DESC
LIMIT 10

/*
Track names (rock genre) that have length more than the average song length
*/
SELECT track_id, track.name, milliseconds
FROM track
JOIN genre USING(genre_ID)
WHERE genre.name='Rock' AND milliseconds > (SELECT AVG(milliseconds)
									  		FROM track)
ORDER BY milliseconds DESC

/*
Spendings in cities of India, also columns with sum of total, average total by cities
*/
SELECT billing_city, total,
SUM(total) OVER(PARTITION BY billing_city) AS sum_total,
AVG(total) OVER(PARTITION BY billing_city) AS avg_total
FROM invoice
WHERE billing_country='India'



















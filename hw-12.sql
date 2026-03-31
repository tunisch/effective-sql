## film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?

SELECT COUNT(*)
FROM film
WHERE length > (SELECT AVG(length) FROM film);

## film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
  
SELECT COUNT(*)
FROM film
WHERE rental_rate =
(
	SELECT MAX(rental_rate) FROM film
);

## film tablosunda en düşük rental_rate ve en düşük replacement_cost değerlerine sahip filmleri sıralayınız.

**iki query WHERE ile AND ya da OR operatoru ile birlestirili o da boyle olur!**
  
SELECT COUNT(*)
FROM film
WHERE rental_rate = 
(
	SELECT MIN(rental_rate) 
	FROM film
)
AND 
replacement_cost = 
(	
	SELECT MIN(replacement_cost)
	FROM film
);

## payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.

SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    COUNT(p.payment_id) AS total_payments
FROM customer c
JOIN payment p 
    ON p.customer_id = c.customer_id
GROUP BY 
    c.customer_id, c.first_name, c.last_name
ORDER BY 
    total_payments DESC;

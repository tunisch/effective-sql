-- actor ve customer tablolarında bulunan first_name sütunları için tüm verileri sıralayalım.

(select first_name from actor
dvdrental(# )
dvdrental-# UNION
dvdrental-# (
dvdrental(# select first_name from customer
dvdrental(# );

-- actor ve customer tablolarında bulunan first_name sütunları için kesişen verileri sıralayalım.

 (select first_name from actor
dvdrental(# )
dvdrental-# INTERSECT
dvdrental-# (
dvdrental(# select first_name from customer
dvdrental(# );

-- actor ve customer tablolarında bulunan first_name sütunları için ilk tabloda bulunan ancak ikinci tabloda bulunmayan verileri sıralayalım.

  (select first_name from actor) EXCEPT ( select first_name from customer );

-- İlk 3 sorguyu tekrar eden veriler için de yapalım.


SELECT first_name FROM actor
UNION ALL
SELECT first_name FROM customer;


SELECT first_name FROM actor
INTERSECT ALL
SELECT first_name FROM customer;

SELECT first_name FROM actor
EXCEPT ALL
SELECT first_name FROM customer;


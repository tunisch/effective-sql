# WHERE ve Mantıksal Operatörler (logical-operators)

Karşılaştırma operatörleri sayesinde koşulumuzu belirtiyorduk ancak çoğu durumda biz birden fazla koşulu gerçekleştirme isteriz bunun için mantıksal operatörlerden faydalanırız.

## Mantıksal Operatörler (Logical Operators)

SQL uses a three-valued logic system with true, false, and null, which represents “unknown”. Observe the following truth tables:

<img width="276" height="253" alt="image" src="https://github.com/user-attachments/assets/bae828b2-c831-465c-838a-bdc7fea9b2a2" />


`WHERE` anahtar kelimesi koşul ile birlikte çalışır. Aşağıda SQL ile birlikte kullanılan karşılaştırma operatörlerini görebilirsiniz.

**Örnek Kullanım**

```sql
SELECT *
FROM actor 
WHERE first_name = 'Penelope' AND last_name = 'Monroe' ;
```

Bu sorgumuzda `dvdrental` veritabanında bulunan `actor` tablosundaki `tüm sütunlarında` bulunan verileri çekiyoruz ancak bu kez iki koşulumuz var. `AND` operatörünün **true** sonucu dönmesi için *bu iki koşulumuzun da* sağlanması gerekiyor. Sıralanacak verilerin `first_name` sütunundaki değeri **'Penelope'** ve `last_name` sütunundaki değerinin **'Monroe'** olması gerekmektedir.

```sql
SELECT *
FROM actor 
WHERE first_name = 'Penelope' OR first_name = 'Bob' ;
```

Bu sorgumuzda `dvdrental` veritabanında bulunan `actor` tablosundaki **tüm sütunlarında** bulunan verileri çekiyoruz ancak bu kez iki koşulumuz var. `OR` operatörünün **true** sonucu dönmesi için *bu iki koşulumuzunda herhangi birinin* sağlanması yeterlidir. Sıralanacak verilerin `first_name` sütunundaki değeri **'Penelope'** veya **'Bob'** olması gerekmektedir.

```sql
SELECT *
FROM film 
WHERE NOT rental_rate = 4.99 ;
```

Bu sorgumuzda `dvdrental` veritabanında bulunan `film` tablosundaki **tüm sütunlarında** bulunan verileri çekiyoruz ancak bu kez koşulumuzu `NOT` yani *değil mantıksal operatörü* yardımıyla oluşturmuşuz. NOT operatörü bize *verilerin hangi koşul dışı* olduğunu gösterir. Örneğimizin senaryosu; Film tablomuzda bulunan tüm sütunlardaki verileri sıralayacağız ancak bu verilerin *rental_rate sütununda bulunan değerleri 4.99' a eşit OLMAYACAK*!

```sql
SELECT *
FROM film 
WHERE NOT (rental_rate = 4.99 OR rental_rate = 2.99)

SELECT * 
FROM actor
WHERE first_name = 'Penelope' AND last_name = 'Monroe' OR first_name = 'Bob';
```
Mantıksal operatörleri sıklıkla birlikte kullanırız. Yukarıdaki örneğimizde sıralayacağımız verilerin `rental_rate sütunlarında bulunan değerlerinin 4.99 veya 2.99` **olmamasını** istiyoruz.

> Sql de buyuk kucuk harf duyarliligi (Case Insensitive dir) yoktur ama String icindeki verilerde yani `Bob` ya da `bob` duyarlidir verideki isim nasil ise oyle yazmak gerekir!!⚠️⚠️

```sql
SELECT * FROM film
WHERE NOT (NOT (rental_rate = 4.99 AND replacement_cost = 20.99));
```

 Yukarıdaki örneğimizde `Film` tablomuzda bulunan `tüm sütunlardaki` verileri sıralayacağız ancak bu verilerin *rental_rate sütununda bulunan değerleri 4.99'* a `VE`  *replacement_cost sutununda bulunan degerleri 20.99* a **esit OLMAYACAK** degerlerin **esit olmayan degerlerini** istiyoruz. Yani `NOT NOT` bize `=` dondurur.⚠️ 



## REFERENCES

1. [W3Schools SQL Operatörler](https://www.w3schools.com/sql/sql_operators.asp)
2. [PostgreSQL Mantıksal Operatörleri](https://www.postgresql.org/docs/current/functions-logical.html)

## Genel Tekrar

Bu çalışmamamızda şimdiye kadar üzerine konuştuğumuz tüm konuları 5 farklı senaryo üzerinden tekrar etmeye çalıştık. Aşağıda ilgili senaryoları bulabilirsiniz.



- film tablosundan 'K' karakteri ile başlayan en uzun ve replacenet_cost u en düşük 4 filmi sıralayınız.

```sql
SELECT *
FROM film 
WHERE length = 
(SELECT MAX(length) FROM film WHERE title LIKE 'K%')
AND replacement_cost = (SELECT MIN(replacement_cost) FROM film WHERE title LIKE 'K%')
LIMIT 5;
```



- film tablosunda içerisinden en fazla sayıda film bulunduran rating kategorisi hangisidir?

```sql
select rating, COUNT(*) AS film_sayisi
FROM film
GROUP BY rating
ORDER BY film_sayisi DESC
LIMIT 1;
```

- cutomer tablosunda en çok alışveriş yapan müşterinin adı nedir?

```sql

```






- category tablosundan kategori isimlerini ve kategori başına düşen film sayılarını sıralayınız.


```sql

```



- film tablosunda isminde en az 4 adet 'e' veya 'E' karakteri bulunan kç tane film vardır?

```sql

```

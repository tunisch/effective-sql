## Genel Tekrar

Bu çalışmamamızda şimdiye kadar üzerine konuştuğumuz tüm konuları 5 farklı senaryo üzerinden tekrar etmeye çalıştık. Aşağıda ilgili senaryoları bulabilirsiniz.



- film tablosundan 'K' karakteri ile başlayan en uzun ve replacement_cost u en düşük 4 filmi sıralayınız.

<img width="768" height="348" alt="image" src="https://github.com/user-attachments/assets/ad40134e-cb67-4590-b472-070f674eac40" />

```sql
SELECT title, length, replacement_cost
FROM film
WHERE title LIKE 'K%'
ORDER BY length DESC, replacement_cost ASC
LIMIT 4;
```


- film tablosunda içerisinden en fazla sayıda film bulunduran rating kategorisi hangisidir?

```sql

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

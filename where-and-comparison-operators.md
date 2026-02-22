# WHERE and Comparison Operators 

**WHERE**

`SELECT` komutu ile yaptığımız çalışmalarda bizler tüm sütunların veya ilgili sütunlarda bulunan verilerin tamamını çekmek isteriz. Çoğu durumda ise verilerin tamamını değil belirli koşulları sağlayan verileri görmek isteriz. Bunun için `WHERE` anahtar kelimesini kullanırız.

**WHERE Söz Dizimi**

```sql
SELECT <sütun_adı>, <sütun_adı>, ...
FROM <tablo_adı>
WHERE <koşul>;
```

> Eğer tablodaki tüm sütunlardaki verileri çekmek istersek asteriks * karakterinden faydalanırız.

```sql
SELECT *
FROM <tablo_adı>;
```

**WHERE Örnek Kullanım**

```sql
SELECT title, replacement_cost
FROM film
WHERE replacement_cost = 14.99;
```

Bu sorgumuzda `dvdrental` veritabanında bulunan `film` tablosundaki `title` ve `replacement_cost` sütunlarında bulunan verileri çekiyoruz ancak bu kez tüm verileri değil `replacement_cost = 14.99` koşulunu sağlayan verileri alıyoruz.

```sql
SELECT * FROM actor
WHERE first_name = 'Penelope';
```

Bu sorgumuzda `dvdrental` veritabanında bulunan `actor` tablosundaki `butun sutunlarda`(*)  bulunan verileri
çekiyoruz ancak bu kez tüm verileri değil `first_name = 'Penelope'` koşulunu sağlayan verileri alıyoruz.

> `=` diger programlama dillerinden farkli olarak `== ` boyle degildir ve Stringlerde burada `' '` tek tirnak olarak verilir yani `" "` cift tirnak kullanilmaz.⚠️

## Karşılaştırma Operatörleri

Yukarıda da bahsettiğimiz üzere `WHERE` anahtar kelimesi koşul ile birlikte çalışır. Aşağıda SQL ile birlikte kullanılan karşılaştırma operatörlerini görebilirsiniz.

<img width="408" height="334" alt="image" src="https://github.com/user-attachments/assets/25f39fc5-443c-426a-bf40-4d7dfb717d43" />

---

## REFERENCES

1. [W3Schools SQL WHERE](https://www.w3schools.com/sql/sql_where.asp)
2. [PostgreSQL Karşılaştırma Operatörleri](https://www.postgresql.org/docs/current/functions-comparison.html)

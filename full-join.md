# FULL JOIN

Full JOIN yapısındaki tablo birleştirmesinde, birleştirme işlemi her iki tablo üzerinden gerçekleştirilir. Senaryomuzu şu şekilde düşünelim eğer tablo 1 olarak book tablosunu aldığımızda öncelikle book tablosundaki ilgili sütundaki tüm verileri alacağız, sonrasında tablo 2 deki ilgili sütunlardan tüm verileri alacağız. Tablo 1 de olup Tablo 2 de olmayan ve Tablo 2 de olup Tablo 1 de olmayan veriler için NULL değeri kullanılır.

Aşağıdaki SQL sorgusunda kitap isimlerinin tamamını alıyoruz, sonrasında yazar isimlerini alıyoruz. Eşleşemeyen veriler için NULL değeri alıyoruz.

```sql
SELECT book.title, author.first_name, author.last_name FROM book
FULL JOIN author
ON author.id = book.author_id;
```

Yukarıdaki sorgumuz sonucunda göreceğimiz gibi kitapların yazar bilgisine sahip değilse NULL değerlerini alırız, yazarlar kitap bilgisine sahip değilse orada da NULL değerlerini alırız.

<img width="231" height="158" alt="image" src="https://github.com/user-attachments/assets/4e907bc2-b134-44f6-902a-3259cab27a96" />

Yukarıdaki görselimizde de gördüğümüz üzere FULL JOIN tablolar arasındaki birleştirmeyi her iki tablo üzerinden belirlenir.

## FULL JOIN Söz Dizimi

```sql
SELECT <sütun_adı>, <sütun_adı> ... FROM <tablo1_adı>
FULL JOIN <tablo2_adı>
ON <tablo1_adı>.<sütun_adı> = <tablo2_adı>.<sütun_adı>;
```

Buradaki tablo1 "left table", tablo2 "right table" olarak da adlandırılır.

- Her iki tabloya ait olan tum degerler almak icin **FULL JOIN** kullaniriz
- **INNER JOIN** gibi simetrik bir yapiya sahiptir.
- `FULL OUTER JOIN = FULL JOIN` ayni seydir
- **FULL JOIN** de constraint olarak `WHERE` de `NOT NULL` dersek **INNER JOIN** yapmis oluruz.
- `WHERE IS NULL` alirsak ortak olmayan ayrik olanlari almis oluruz.


---

## REFERENCES

1. [W3Schools FULL JOIN](https://www.w3schools.com/sql/sql_join_full.asp)

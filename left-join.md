# LEFT JOIN

LEFT JOIN yapısındaki tablo birleştirmesinde, birleştirme işlemi tablo 1 (soldaki tablo) üzerinden gerçekleştirilir. Senaryomuzu şu şekilde düşünelim eğer tablo 1 olarak book tablosunu aldığımızda öncelikle `book` tablosundaki ilgili sütundaki tüm verileri alacağız, sonrasında bu verilerin eşleştiği ilgili tablo 2 sütunundaki verileri alacağız. Tablo 1 de olup Tablo 2 de olmayan veriler için **NULL** değeri kullanılır.

Left joinde tablo sirasi onemlidir.

Aşağıdaki SQL sorgusunda kitap isimlerinin tamamını alıyoruz, sonrasında bu kitap isimleriyle eşleşebilen yazar isimlerini alıyoruz. Kitap isimlerine karşılık olmayan yazarlar için NULL değeri alıyoruz.

```sql
SELECT book.title, author.first_name, author.last_name
FROM book
LEFT JOIN author
ON author.id = book.author_id;
```

Yukarıdaki sorgumuz sonucunda göreceğimiz gibi kitapların yazar bilgisine sahip değilse NULL değerlerini alırız.

<img width="305" height="231" alt="image" src="https://github.com/user-attachments/assets/6a42f4e9-2243-4bda-9f2a-f9ef140406d3" />

Yukarıdaki görselimizde de gördüğümüz üzere LEFT JOIN tablolar arasındaki eşleşmeyi tablo 1 (soldaki tablo) üzerinden belirlenir.

## LEFT JOIN Söz Dizimi
```sql
SELECT <sütun_adı>, <sütun_adı> ...
FROM <tablo1_adı>
LEFT JOIN <tablo2_adı>
ON <tablo1_adı>.<sütun_adı> = <tablo2_adı>.<sütun_adı>;
```
Buradaki tablo1 "left table", tablo2 "right table" olarak da adlandırılır.

<img width="855" height="785" alt="image" src="https://github.com/user-attachments/assets/00c5cfad-fffa-4089-99d7-f77edfd47e0d" />

## REFERENCES 
1. [W3Schools LEFT JOIN](https://www.w3schools.com/sql/sql_join_left.asp)

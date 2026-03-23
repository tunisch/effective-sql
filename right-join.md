# RIGHT JOIN

RIGHT JOIN yapısındaki tablo birleştirmesinde, birleştirme işlemi tablo 2 (sağdaki tablo) üzerinden gerçekleştirilir. Senaryomuzu şu şekilde düşünelim eğer tablo 2 olarak **author** tablosunu aldığımızda öncelikle author tablosundaki ilgili sütundaki tüm verileri alacağız, sonrasında bu verilerin eşleştiği ilgili tablo 1 sütunundaki verileri alacağız. Tablo 2 de olup Tablo 1 de olmayan veriler için NULL değeri kullanılır.

Aşağıdaki SQL sorgusunda yazar isim ve soyisim bilgilerinin tamamını alıyoruz, sonrasında eşleşebilen kitap isimlerini alıyoruz. Yazar bilgilerine karşılık olmayan kitap isimleri için **NULL** değeri alıyoruz.

> RIGHT JOIN = RIGHT OUTER JOIN

```sql
SELECT book.title, author.first_name, author.last_name
FROM book
RIGHT JOIN author
ON author.id = book.author_id;
```

Yukarıdaki sorgumuz sonucunda göreceğimiz gibi yazarlara ait olmayan kitaplar NULL değerlerini alırız.

<img width="305" height="231" alt="image" src="https://github.com/user-attachments/assets/c3c89bd2-48e6-46a9-b08a-62c105eb9f18" />

Yukarıdaki görselde RIGHT JOIN'in eşleşmeyi sağ tablo (tablo 2) üzerinden belirlediğini görüyoruz.

## RIGHT JOIN Söz Dizimi

```sql
SELECT <sütun_adı>, <sütun_adı> ...
FROM <tablo1_adı>
RIGHT JOIN <tablo2_adı>
ON <tablo1_ adı>.<sütun_adı> = <tablo2_adı>.<sütun_adı>;
```

Aşağıdaki görselde left join ile right join arasında böyle yazılınca aynı sonuölar verıelceğini gösterir tablo sırası değiştirmek yeterli olur !

<img width="976" height="817" alt="image" src="https://github.com/user-attachments/assets/c3a9d581-1dab-4831-8198-0914c0822d16" />

**Temel farklıkık aslında şöyledir**

Tüm Kitaplara ait olan Yazarları mı görmek istiyoruz yok sa Tüm yazarlara ait olan Kitapları mı görmek istiyoruz.

- JOIN’den sonra yazılan sağ tablo2 (author) → her zaman tamamen gelir.
- Book’da eşleşme yoksa → Book tarafı NULL olur.

--- 

## REFERENCES
1. [W3Schools RIGHT JOIN](https://www.w3schools.com/sql/sql_join_right.asp)

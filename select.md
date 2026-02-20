# SELECT
##   Sorgu (Query)
SQL komutlarını içeren sorgu cümleleridir.

SELECT en çok kullanılan SQL komutudur ve veritabanından belirtilen sütunlardaki verileri çekmemizi sağlar. Ayrıca SELECT komutunu çoğunlukla diğer SQL komutlarıyla birlikte kullanırız.

### SELECT Söz Dizimi
```sql
SELECT <sütun_adı>, <sütun_adı>, ...
FROM <tablo_adı>;
```
> Eğer tablodaki tüm sütunlardaki verileri çekmek istersek asteriks * karakterinden faydalanırız.

```sql
SELECT *
FROM <tablo_adı>;
```

### SQL komutlarının büyük harf - küçük harf duyarlılıkları yoktur. (Case Insensitive)
Aşağıdaki sorguların tamamı aynı sonucu verir.

```sql
SELECT <sütun_adı>, <sütun_adı>, ...
FROM <tablo_adı>;

select <sütun_adı>, <sütun_adı>, ...
from <tablo_adı>;

Select <sütun_adı>, <sütun_adı>, ...
From <tablo_adı>;
```

> SQL komutlarının daha kolay anlaşılması açısından SELECT örneğinde olduğu gibi büyük harflerden oluşan yazımı kullanmak daha faydalidir.

**SELECT Örnek Kullanım**

```sql
SELECT first_name, last_name
FROM actor;
```

> Bu sorgumuzda dvdrental veritabanında bulunan actor tablosundaki first_name ve last_name sütunlarında bulunan verileri çekiyoruz. `,` ile birden fazla sutun ismi alabiliyoruz 

## REFERENCES
1.[W3Schools SQL SELECT](https://www.w3schools.com/sql/sql_select.asp)

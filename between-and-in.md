# BETWEEN ve IN

## BETWEEN

Aşağıdaki sorgumuzda **AND** mantıksal operatörü yardımıyla **film** tablosunda bulunan verilerimizi uzunluğu 140 tan küçük eşit **VE** 100 den büyük eşit olmak üzere sıralıyoruz.

```sql
SELECT * 
FROM film
WHERE length >= 100 AND length <= 140;
```
Burada temel olarak yaptığımız belirli aralıkta bulunan verileri sıralamak. Bunun **BETWEEN ...** **AND** yapısını kullanarak da yapabiliriz.

## BETWEEN AND Söz Dizimi

```sql
SELECT <sütun_adı>, <sütun_adı>, ...
FROM <tablo_adı>
WHERE <sütun_adı> BETWEEN <kucuk_koşul> AND <buyuk_koşul> ;
```
**BETWEEN Örnek Kullanım**
```sql
SELECT *
FROM film
WHERE length BETWEEN 100 AND 140; -- WHERE length >= 100 AND length <= 140 ifadesi ile aynı sonucu verir.
```
> Burada dikkat edilmesi gereken nokta 100 ve 140 sınır değerleri aralığa dahildir.Yani 100 ve 140 dahildir⚠️

```sql
SELECT rental_rate, replacement_cost FROM film
WHERE (rental_rate BETWEEN 2 AND 4) AND (replacement_cost BETWEEN 10 AND 20);
```


## IN

Şöyle bir senaryo düşünelim, yine film tablosundan uzunluğu 30, 60, 90 veya 120 dakikaya eşit olan verileri sıralayalım.

```sql
SELECT * 
FROM film
WHERE length = 30 OR length = 60 OR length = 90 OR length = 120;
```

sorgusuyla verileri aldık ancak burada şöyle bir sorunumuz var peki 4 farklı değer için değil 14 farklı değer için bu sorgumuzu gerçekleştirmek için 14 ayrı OR mantıksal operatörü kullanmamız gerekirdi. Bunun yerine istenilen değerleri liste haline geitip IN anahtar kelimesiyle kullanabiliriz.

## IN Söz Dizimi

```sql
SELECT <sütun_adı>, <sütun_adı>, ...
FROM <tablo_adı>
WHERE <sütun_adı> IN (değer1, değer2, ...);
```

**IN Örnek Kullanım**

```sql
SELECT *
FROM film
WHERE length IN (30,60,90,120);
```
Yukardaki sorgumuz (query) 30,60,90,120 arasina degilde 30 a 60 a 90 a 120 e ayri ayri bakilip sadece onlari getirir.

---

## REFERENCES
1. [W3Schools IN Operatörü](https://www.w3schools.com/sql/sql_in.asp)


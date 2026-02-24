# DISTINCT AND COUNT AGGREGATE FUNCTION

## DISTINCT  (Birbirinden farkli degerleri saymak icin)
Şimdiye kadar yaptığımız SQL sorgularında genellikle verileri belirli koşullar altında sıraladık. Dikkat ettiyseniz bir çok durumda aynı sütün içerisinde birbirinin aynı olan veriler ile karşılaştık. Örneğin **dvdrental** veritabanı içerisinde bulunan **film** tablosundaki replacement_cost, rental_rate gibi sütunlar birbirini tekrar eden verilerden oluşmaktadır. Bazı durumlarda bir sütun içerisinde bulunan farklı değerleri görmek isteriz.

DISTINCT → Bir sütundaki tekrar eden değerleri kaldırır, sadece benzersiz olanları gösterir.

Yani:
- Aynı değer 50 kere geçse bile
- DISTINCT onu 1 kere gösterir

```sql
SELECT DISTINCT rental_rate 
FROM film;
```
sorgusu bize rental_rate sütununda bulunan birinden farklı 2.99, 0.99, 4.99 verilerini gösterir.

## SELECT DISTINCT Söz Dizimi
Birden fazla sutun olunca `,` ile ayirip sorgulanir.Assagidaki gibidir.
```sql
SELECT DISTINCT <sütun_adı>, <sütun_adı>, ...
FROM <tablo_adı>;
```

## COUNT
COUNT **aggregate** fonksiyonu ilgili sorgu sonucunda oluşan veri sayısını bildirir. Aşağıdaki sorguda ismi 'Penelope' olan aktörleri sıralıyoruz.

```sql
SELECT * 
FROM actor
WHERE first_name = 'Penelope';
```
ancak veri sayısını bulmak istersek **COUNT** fonksiyonunu kullanırız,sadece sayi verisini istersek COUNT ile beraber * kullanarak bulabilir.


```sql
SELECT COUNT(*)
FROM actor
WHERE first_name = 'Penelope';
```

Yukarıda da belirttiğimiz gibi COUNT fonksiyonu ile sorgu sonucunda ortaya verileri sayıyoruz. Bu nedenle COUNT(*) veya COUNT(sütun_adı) aynı sonucu verir.

**Ornek**

first_name sutunun gostermek istersek COUNT icine yazilarak yapabiliriz.
```sql
SELECT COUNT(first_name) FROM actor
WHERE first_name LIKE 'A%';
```
**Ornek-1**

Birbirinden farkli ilk isim olarak kac veri oldugunu hesaplar
```sql
SELECT COUNT(DISTINCT first_name) FROM actor;
```
**Ornek-2**

Birbirinden farkli olan kac tan uzunluk var oldugunu hesaplamak istersek 
```sql
SELECT COUNT(DISTINCT length) FROM film;
```
---

## REFERENCES
1.[W3Schools SELECT DISTINCT](https://www.w3schools.com/sql/sql_distinct.asp)

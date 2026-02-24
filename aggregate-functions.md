# Aggregate Fonksiyonlar(MIN, MAX, SUM, AVG, COUNT)
Aggregate fonksiyonları yardımıyla bizler veri kümelerimizden sonuçlar çıkarabiliriz. Ne demek istiyorum? Şu senaryoları düşünelim.

- Toplam kaç adet müşterimiz var?
- Elimizde bulunan filmlerin ortalama uzunluğu nedir?

Bu şekilde belirli veri kümelerinden tek bir sonuç çıkarmak için aggregate fonksiyonları kullanırız.

## Örnek Kullanımlar
AVG fonksiyonunu kullandığımız sayısal değerlerden oluşan sütunun ortalama değerini alırız.

```sql
SELECT AVG(length) 
FROM film;
```
sorgusu sayesinde **film** tablosunda bulunan **length** sütunundaki değerlerin ortalamasını alırız. 

> NOTE
 - **ROUND** fonkisyonu ile **AVG** kullanimin sonundaki sifirlardan kurtulmus oluruz

```sql
SELECT ROUND(AVG(length), <virgulden kac basamak kalacak ise o rakam yazilir>) FROM film;
SELECT ROUND(AVG(length), 3) FROM film;
```

**SUM** fonksiyonunu kullandığımız sayısal değerlerden oluşan sütunun toplam değerini alırız.

```sql
SELECT SUM(length) 
FROM film;
```
sorgusu sayesinde **film** tablosunda bulunan **length** sütunundaki değerlerin toplamını alırız.

**MAX** fonksiyonunu kullandığımız sayısal değerlerden oluşan sütunun en yüksek değerini alırız.

```sql
SELECT MAX(length) 
FROM film;
```
sorgusu sayesinde **film** tablosunda bulunan **length** sütunundaki değerlerin en yüksek değerini alırız.

**MIN** fonksiyonunu kullandığımız sayısal değerlerden oluşan sütunun en düşük değerini alırız.

```sql
SELECT MIN(length) 
FROM film;
```
sorgusu sayesinde **film** tablosunda bulunan **length** sütunundaki değerlerin en düşük değerini alırız.

**COUNT** fonksiyonunu kullandığımız sayısal değerlerden oluşan sütundaki verilerin kac tane oldugunun değerini alırız.

```sql
SELECT COUNT(lenght)
FROM film;
```
sorgusu sayesinde **film** tablosunda bulunan **length** sutunundaki degerlerin sayisini aliriz.

> NOTE
Ayni anda aggregate fonksiyonlar uygulayabiliriz.

```sql
SELECT MAX(length), MIN(length), SUM(replacement_cost) FROM film;
```
> ERROR EXAMPLES

<img width="899" height="493" alt="image" src="https://github.com/user-attachments/assets/09197de6-2437-4121-9238-2954329a2c1b" />

Bir aggregate func yazdigimizda yanina baska bir sutun siralamayiz sadece aggregate funcs lar olabilir ya da sadece sutun siralama yapabiliriz hata GROUP BY olur cunku ayni anda GROUP BY ile siralama yapilabilir.!!⚠️ 

---

## REFERENCES
1. [W3Schools Aggregate Function](https://www.w3schools.com/sql/sql_count_avg_sum.asp)
2. [PostgreSQL Aggregate Function](https://www.postgresql.org/docs/current/tutorial-agg.html)

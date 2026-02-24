# PSQL and USAGE 

## PSQL
PSQL, PostgreSQL ile birlikte gelen terminal tabanlı bir kullanıcı arayüzüdür. PSQL sayesinde komut satırında sorgular yazıp, sonuçlarını görebiliriz. Aşağıda temel PSQL komutlarının ilk bölümünü bulabilirsiniz.

1.🔌 PostgreSQL Sunucusunu Başlatma:
PostgreSQL çalışmıyorsa PSQL bağlantısı yapılamaz. Windows kullanıcıları sunucuyu şu şekilde başlatabilir:
```sql
pg_ctl -D <data_dizini> -l logfile start
```
**Ornek**
```sql
pg_ctl -D C:\PostgreSQL\data -l logfile start
```
2. Sunucunun durumunu kontrol etmek için:
```sql
pg_ctl -D <data_dizini> status
```
3. 🔑 PSQL ile PostgreSQL’e Bağlanma:
Varsayılan kullanıcıyla bağlanmak:
```sql
psql -U <kullanıcı_adı>
```
**Ornek**
```sql
psql -U postgres
```
- Bağlantı başarılı olursa PSQL prompt’u görünür:
```sql
postgres=#
```
- 📚 Veritabanlarını Listelemek
```sql
\l
```
veya
```sql
\list
```
- 🔄 Başka Bir Veritabanına Bağlanmak

```sql
\c <veritabani_adi>
```
**Ornek**
```sql
\c dvdrental
```
4. 📂 Tabloları Listelemek:

```sql
\dt
```
5. 🧱 Bir Tablonun Yapısını Görmek:
```sql
\d <tablo_adi>
```
**Ornek**
```sql
\d customer
```
- Daha detaylı görünüm:
```sql
\d+ <tablo_adı>
```
6. 📥 Tablo İçeriğini Görmek
Tablonun içine “girmek” yani satırları görmek için:
```sql
SELECT * FROM <tablo_adı>;
```
**Örnek:**
```sql
SELECT * FROM customer;
```
Büyük tablolarda daha kontrollü görüntüleme:
```sql
SELECT * FROM <tablo_adı> LIMIT 50;
```

**🧪 Örnek Sorgula**
1) customer tablosunda first_name ve last_name 'A' ile başlayan kayıtlar
```sql
SELECT *
FROM customer
WHERE first_name LIKE 'A%' AND last_name LIKE 'A%';
```
2)  film tablosunda length 80–120 arası olan ve rental_rate 0.99 veya 2.99 olan filmler

```sql
SELECT *
FROM film
WHERE (length BETWEEN 80 AND 120)
  AND (rental_rate IN (0.99, 2.99));
```
7. 🚪 PSQL’den Çıkmak

```sql
\q
```
> 🎯 Notlar
  - Komutlar tüm PostgreSQL sürümleriyle uyumludur.
  - Data dizini, kullanıcı adı ve veritabanı adı her sistemde farklı olabilir.
  - Rehber, eğitim amaçlı örnek veritabanı olan dvdrental üzerinden hazırlanmıştır.

## REFERENCES
1. [PostgreSQL PSQL Dökümantasyon](https://www.postgresql.org/docs/current/app-psql.html)
































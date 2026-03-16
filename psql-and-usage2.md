# PSQL ve Uygulama II
## PSQL
PSQL, PostgreSQL ile birlikte gelen terminal tabanlı bir kullanıcı arayüzüdür. PSQL sayesinde komut satırında sorgular yazıp, sonuçlarını görebiliriz. Aşağıda temel PSQL komutlarının ilk bölümünü bulabilirsiniz.



1. PSQL ile PostgreSQL'e host, port, kullanıcı adı ve veritabanı ismi ile bağlanmak için:


```sql
psql -h <host_name> -p <port_name> -U <kullanıcı_adı> <veritabanı_adı>
```

2. Yeni veritabanı oluşturmak için


```sql
CREATE DATABASE <veritabanı_adı>
```

3. Yeni tablo oluşturmak için


```sql
CREATE TABLE <tablo_adı> (
  <sütun_adı> VERİ TİPİ (KISITLAMA)
  ----
```

4. Tablo detaylarını görmek için

\d+ sequrence bilgisi ile gosterir
```sql
\d+ <tablo_adı>
```

5. Bir tablodaki sütun ismini değiştirmek için


```sql
ALTER TABLE <tablo_adı> RENAME COLUMN <sütun_adı> TO <yeni_sütun_adı>
```

6. Bir sütuna UNIQUE kısıtlaması eklemek için


```sql
ALTER TABLE <tablo_adı> ADD CONSTRAINT <kısıtlama_adı> UNIQUE <sütun_adı>
```
---
## REFERENCES
1. [PostgreSQL PSQL Dökümantasyon](https://www.postgresql.org/docs/13/app-psql.html)

# NOT NULL ve ALTER

## NOT NULL
Birçok durumda bizler herhangi bir sütuna yazılacak olan verilere belirli kısıtlamalar getirmek isteriz. Örneğin yaş sütünunda sadece sayısal verilerin olmasını isteriz ya da kullanıcı adı sütununda bilinmeyen (NULL) değerlerin olasını istemeyiz. Bu gibi durumlarda ilgili sütunda **CONSTRAINT** kısıtlama yapıları kullanılır.

**NULL** bilinmeyen veri anlamındadır. **Boş string veya 0 verilerinden farklıdır**. Şu şekilde bir senaryo düşünelim bir kullanıcının email hesabı yoksa buradaki veriyi boş string şeklinde düşünebiliriz. Acak eğer kullanıcının maili var ancak ne olduğunu bilmiyorsak bu durumda o veri NULL (bilinmeyen) olarak tanımlanabilir.

## NOT NULL Kullanımı

Employees şeklinde bir tablomuzu oluşturalım. Tablodaki first_name ve last_name sütunlarında bilinmeyen veri istemiyoruz, bu sütunlarda NOT NULL kısıtlama yapısı kullanabiliriz.

```sql
CREATE TABLE Employees (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    age INTEGER
);
```

## ALTER ve NOT NULL


**ALTER** anahtar kelimesini **varolan bir tabloda değişiklik yapmak için kullanılır**. Aşağıdaki senaryoda bir sütuna **NOT NULL** kısıtlaması vermek için aşağıdaki söz dizimi yapısı kullanılır.


```sql
ALTER TABLE <tablo_adı> ALTER COLUMN <sütun_adı>
SET NOT NULL; -> belirlenen column not null yap demektir set keyword kullanilir.
```
> NOT
NULL ya da NOT NULL kullanilirken where = NULL olmaz ❌
Dogrusu IS ile olmalidir ✅ 
IS sadece şu durumlar için kullanılır:
- IS NULL
- IS NOT NULL
- Bazı SQL türlerinde IS TRUE, IS FALSE
Ama string karşılaştırması için ASLA kullanılmaz.

<img width="799" height="415" alt="image" src="https://github.com/user-attachments/assets/07c70a4d-f70d-4ffd-b66d-b88fd263bb72" />

Eger sutunda **NULL** ifadeler var ise ilgili row silinmelidir.

```sql
DELETE FROM users
WHERE username IS NULL
RETURNING *;
```

---

## REFERNCES
1. [W3Schools NOT NULL](https://www.w3schools.com/sql/sql_notnull.asp)

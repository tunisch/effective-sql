# Tablo Verilerini Güncellemek (UPDATE - DELETE)

Bir tabloda bulunan verileri güncellemek veya silmek için öncelikle örnek bir tablo oluşturup içine 5 date veri yerleştireceğim.

Bunun için [Mockaroo](https://www.mockaroo.com/) benzeri servisleri kullanabiliriz. Aşağıdaki örnek tablo oluşturma ve veri girme komutlarını bulabilirsiniz.

```sql
CREATE TABLE my_apps (
	id INT,
	name VARCHAR(50),
	price VARCHAR(50)
);
INSERT INTO my_apps (id, name, price) values (1, 'Ronstring', '$0.96');
INSERT INTO my_apps (id, name, price) values (2, 'Duobam', '$3.44');
INSERT INTO my_apps (id, name, price) values (3, 'Tresom', '$2.21');
INSERT INTO my_apps (id, name, price) values (4, 'Redhold', '$2.52');
INSERT INTO my_apps (id, name, price) values (5, 'Y-find', '$9.14');
```
## UPDATE

**UPDATE** anahtar kelimesi sayesinde tablomuzda bulunan verileri güncelleyebiliriz.

### UPDATE Söz Dizimi
```sql
UPDATE <tablo_adı>
SET <desütun_adı> = 'değer', 
    <sütun_adı> = 'değer',
    ----
WHERE <koşul_adı>;
```
### UPDATE Örnek Kullanım
**my_apps** tablosunda bulunan ve id 2' ye eşit olan verimizin name sütunundaki degerini 'Mayak' price sütunundaki değerini '$5.22' ile değiştirelim.

```sql
UPDATE my_apps
SET name = 'Mayak',
	price = '$5.22'
WHERE id = 2; --kosul durumu id si 2 olan demektir
```

## UPDATE yapilan satirin ekranda geri gelmesi - RETURNING Söz Dizimi
```sql
UPDATE <Table_name>
SET <column_name> = 'degistirilmek_istenen_name/ deger'
WHERE <kosul_sutun_adi> = 'kosulun_degeri'
RETURNING *;
```

### UPDATE yapilan satirin ekranda geri gelmesi - RETURNING Örnek Kullanım
```sql
UPDATE author
SET last_name = 'keskin'
WHERE first_name = 'Odetta'
RETURNING *;
```

## DELETE
**DELETE** anahtar kelimesi sayesinde tablomuzda bulunan verileri silebiliriz.

### DELETE Söz Dizimi
```sql
DELETE FROM <tablo_adı>
WHERE <koşul_adı>;
```
### DELETE Örnek Kullanım
**my_apps** tablosunda bulunan name sütunundaki verisi 'Tresom' olan satırı silelim.

```sql
DELETE FROM my_apps
WHERE name = 'Tresom'; -- Eğer aynı isimden birden fazla satır varsa, hepsi silinir. Tek bir satır silmek istiyorsan genelde id üzerinden silmek daha güvenlidir.

```
---

## REFERNCES
1. [W3Schools SQL UPDATE](https://www.w3schools.com/sql/sql_update.asp)
2. [W3Schools SQL DELETE](https://www.w3schools.com/sql/sql_delete.asp)

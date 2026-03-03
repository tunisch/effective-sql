# ALIAS (AS)

- **AS** anahtar kelimesi sayesinde sorgular sonucu oluşturduğumuz sanal tablo ve sütunlara `geçici isimler verebiliriz`.
- `gecici isimler` sadece o sorgu (query) calisip bitene kadar gecerlidir yeni sorgu da o isim gecerli olmaz original table korunmus olur.!!
- **AS** kullanmadan da yapilir direkt ayni sonuc verilir!!
- **Birden fazla kelime grupu kullanilirken** yani(isim -> tek kelime grubu "isim test" -> birden fazla kelime grubu) **cift tirnak isareti(" ")** kullanilir!!!⚠️ 
- `Gecici olarak iki sütunu birlestirmek icin` **CONCAT** fonksiyonu kullanilir.

```sql
SELECT first_name AS "isim test", last_name AS "soyisim test" FROM actor;
```

## ALIAS SÜTUN/TABLO KULLANIMI
```sql
SELECT <sütun_adı> AS <geçici_ad>
FROM <tablo_adı>;
```

**Examples-1**`
```sql
SELECT first_name AS isim, last_name AS soyisim FROM actor;
```

**Examples-2**
```sql
SELECT first_name isim FROM actor; /* first_name - - isim arasinda AS kullanmadan da ayni sonuc verilmis olur changed name alias gecerli olmus olur auto boyledir sistemsel olarak */
```

**Examples-3**
```sql
SELECT COUNT(*) AS "Aktor Sayisi" FROM actor; -- normalde table_name = count olarak geliyor ama bu query ile adi "Aktor Sayisi" olarak yazilip sonuc verilmis oluyor.
```

**Examples-4**
`Gecici olarak iki sutunu birlestirmek icin`
```sql
SELECT CONCAT(first_name, ' ', last_name) AS "isim ve soyisim" FROM actor; -- boylelikle bu query de first_name ve last_name bir sutunda arasinda ' ' bosluk olaracak sekilde verileriyle ve tabla name AS ile isim ve soyisim olacak sekilde getirilmis olur.
```

---

**QUESTION**
- 1) "Employee" sanal tablomuzda bulunan müşteri bilgilerini "name" sütununa göre artan, "age" sütununa göre azalan olarak sıralayınız.
> **CEVAP**
```sql
SELECT *
FROM Employee
ORDER BY name ASC, age DESC;
/* name ASC → İsimler A’dan Z’ye sıralanır. */
/* - age DESC → Aynı isme sahip kişiler varsa yaşları büyükten küçüğe sıralanır. */
/* - Sütunlar arasında virgül zorunludur. -> ORDER BY name ASC, age DESC, salary ASC; */
```

- 2) `ORDER BY` anahtar kelimesi neden kullaniriz?
> **CEVAP**
```
verileri siralamak icindir.
```
- 3) `LIMIT` anahtar kelimesi neden kullaniriz?
> **CEVAP**
```
siralanacak veri sayisini belirtmek icin
```
- 4) `OFFSET 10 LIMIT 3` query sonucunda kac adet veri siralanir?
> **CEVAP**
```
`OFFSET` pass gecmeye calisir
10 tanesini pass gec 3 tanesini yaz oluyor
```

- 5) "Products" sanal tablomuzda bulunan **satir sayisi** hangi fonksiyon ile buluruz?
> **CEVAP**
```sql
SELECT COUNT(*)
FROM Products;
```
- 6) "Products" sanal tablomuzda bulunan "Price" sütunundaki değerlerin ortalamasını hangi SQL komutları ile alırız?
> **CEVAP**
```sql
SELECT AVG(Price) FROM Products;
```

- 7) "Customers" sanal tablomuzda bulunan müşterilerimizin sayısını "Country" sütununa göre nasıl gruplarız?
> **CEVAP**
```sql
SELECT COUNT(Country) FROM Customers GROUP BY Country; /* - COUNT(Country) → Sadece Country sütunu NULL değilse sayar.
- COUNT(*) → Tüm satırları sayar, NULL olup olmamasına bakmaz. Bu yüzden müşteri sayısı için en güvenilir yöntem COUNT(*)’dir. 
```
- 8) HAVING anahtar kelimesi hakkında hangisi yanlıştır?
> **CEVAP**

```
HAVING, WHERE’in yerine geçmez.
- WHERE → satırları gruplamadan önce filtreler.
- HAVING → gruplandıktan sonra grupları filtreler
```

---

## REFERENCES 
1. [W3Schools SQL ALIAS](https://www.w3schools.com/sql/sql_alias.asp)

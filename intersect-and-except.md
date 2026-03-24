# INTERSECT ve EXCEPT

**INTERSECT** operatörü sayesinde farklı SELECT sorgularıyla oluşan sonuçların kesişen verilerini tek bir sonuç kümesi haline getiririz.

## INTERSECT Kullanımı

**bookstore** veritabanında iki adet sorgu yapıyoruz. İlk sorgumuzda sayfa sayısı en fazla olan 5 kitabı, ikinci sorgumuzda ise isme göre 5 kitabı sıralıyoruz. INTERSECT anahtar kelimesi sayesinde bu iki sorgu sonucunda oluşan veri kümelerinden kesişen verileri tek bir sonuçta birleştiririz.

```sql
( SELECT * 
FROM book
ORDER BY title
LIMIT 5
)
INTERSECT
(
SELECT * 
FROM book
ORDER BY page_number DESC
LIMIT 5
);
```

INTERSECT operatörü kullanılacağı sorguların, sütun sayıları eşit olmalıdır ve sütunlardaki veri tipleri eşleşmelidir.

## INTERSECT Söz Dizimi

```sql
SELECT <sütun_adı>, <sütun_adı>... FROM <table1>
INTERSECT
SELECT <sütun_adı>, <sütun_adı>...
FROM <table2>
```

## INTERSECT ALL

INTERSECT operatörü bize kesişen veriler içerisindeki tekrar edenleri göstermez. Tekrar edenleri görmek için INTERSECT ALL kullanırız.

## EXCEPT Kullanımı

**bookstore** veritabanında iki adet sorgu yapıyoruz. İlk sorgumuzda sayfa sayısı en fazla olan 5 kitabı, ikinci sorgumuzda ise isme göre 5 kitabı sıralıyoruz. `EXCEPT anahtar kelimesi sayesinde ilk sorguda olup ancak ikinci sorguda olmayan verileri` gösterir.

```sql
( SELECT * 
FROM book
ORDER BY title
LIMIT 5
)
EXCEPT
(
SELECT * 
FROM book
ORDER BY page_number DESC
LIMIT 5
);
```
EXCEPT operatörü kullanılacağı sorguların, sütun sayıları eşit olmalıdır ve sütunlardaki veri tipleri eşleşmelidir.

## EXCEPT Söz Dizimi

```sql
SELECT <sütun_adı>, <sütun_adı>... FROM <table1>
EXCEPT
SELECT <sütun_adı>, <sütun_adı>...
FROM <table2>
```

## EXCEPT ALL

EXCEPT operatörü bize ilk sorguda olan ancak ikinci sorguda olmayan veriler içerisindeki tekrar edenleri göstermez. Tekrar edenleri görmek için EXCEPT ALL kullanırız.

## 3. Alternatif: FULL OUTER JOIN + WHERE

Bazı kişiler EXCEPT kullanmak istemez, o zaman şöyle yapılır:
```sql
SELECT *
FROM A
FULL OUTER JOIN B ON A.id = B.id
WHERE A.id IS NULL;   -- sadece B’de olanlar
```

WHERE A.id IS NULL neyi seçiyor?

Bu filtre şunu söylüyor:

“A tarafında eşleşme olmayan satırları getir.”

A.id NULL ise bu şu demektir:
- Bu satır A’da yok
- Ama B’de var (çünkü FULL OUTER JOIN tüm B satırlarını da getiriyor)
Dolayısıyla sonuç:

👉 Sadece B’de olup A’da olmayan kayıtlar

🔥 Kısacası:
- A.id IS NULL → A’da yok, B’de var
- B.id IS NULL → B’de yok, A’da var

👉 3 sadece B’de var

🎯 Senin kafanı karıştıran nokta şu:

“A.id NULL olanları filtrele” deyince sanki “A’daki NULL değerleri getir” gibi geliyor.

Ama aslında:
- Bu NULL A tablosundan gelen bir NULL değil
- JOIN sonucu oluşan bir NULL
- Yani “A’da karşılığı yok” anlamına geliyor



--- 

**OZETLE :**
> Birden daha fazla select sorgusu yaptigimizda ayni sanal tablo icerisinde birlestirmek istersek **UNION** operatoru , kesisimlerini almak istersek **INTESECT** , ancak ilk sorguda olan ikinci sorguda olmayan verileri istersek **EXCEPT** operatorunu kullanacagiz.



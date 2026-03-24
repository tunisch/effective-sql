# UNION 

**UNION** operatörü sayesinde farklı SELECT sorgularıyla oluşan sonuçları tek bir sonuç kümesi haline getiririz.

## UNION Kullanimi

**bookstore** veritabanında iki adet sorgu yapıyoruz. İlk sorgumuzda sayfa sayısı en fazla olan 5 kitabı, ikinci sorgumuzda ise isme göre 5 kitabı sıralıyoruz. UNION anahtar kelimesi sayesinde bu iki sorguyu da birleştirebiliriz.

```sql
( SELECT * 
FROM book
ORDER BY title
LIMIT 5
)
UNION
(
SELECT * 
FROM book
ORDER BY page_number DESC
LIMIT 5
);
```

UNION operatörü kullanılacağı sorguların, sütun sayıları eşit olmalıdır ve sütunlardaki veri tipleri eşleşmelidir.

## UNION Söz Dizimi

```sql
SELECT <sütun_adı>, <sütun_adı>... FROM <table1>
UNION
SELECT <sütun_adı>, <sütun_adı>...
FROM <table2>
```
## UNION ALL

UNION operatörü bize birleşik veriler içerisindeki tekrar edenleri göstermez. Tekrar edenleri görmek için **UNION ALL** kullanırız.

```sql
( SELECT * 
FROM book
ORDER BY title
LIMIT 5
)
UNION ALL
(
SELECT * 
FROM book
ORDER BY page_number DESC
LIMIT 5
);
```

<img width="570" height="754" alt="image" src="https://github.com/user-attachments/assets/ae86ff26-e489-45c8-84af-044e9f1bb574" />


Yukarida Ayni tablo uzerinden ornekler verilmistir Ama farkli tablolar uzerinden de sorgu yapabiliri.

```sql
(
SELECT id, email FROM author
)
UNION
(
SELECT id, title FROM book
);
```

<img width="426" height="806" alt="image" src="https://github.com/user-attachments/assets/2421d3be-3831-401f-b899-97722ecfb206" />

> Gozukmesi gereken Sutunlarin belirlenmesi ilk yazilan query deki sutun namelerine gore olur.

> UNION operatoru kullanirken her iki sorgu icinde sutun sayilari esit olmak zorundadir yukarida 3 olupa ssagida 2 olamaz !.

<img width="514" height="572" alt="image" src="https://github.com/user-attachments/assets/edf211c4-21c2-4fe7-a6df-5249ef1a67e0" />

> Assagida ki sorgularda **UNION** kullanirken sorgular icindeki `sutun sayilari ayni olmak kosuluyla ve sutunlar sirasina gore ayni veri tipinde olmalidir !`

```sql
(
SELECT id, email FROM author
)
UNION
(
SELECT id, page_number FROM book
);
```
<img width="590" height="612" alt="image" src="https://github.com/user-attachments/assets/c357a88c-3f65-4b58-9799-b0aa0355b5b1" />

---

## REFERENCES
1. [W3Schools UNION](https://www.w3schools.com/sql/sql_union.asp)
























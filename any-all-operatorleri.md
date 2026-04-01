# Any ve All Operatörleri

Any ve All operatörleri alt sorugularda sıklıkla kullanılır ve tek bir sütunda bulunan bir değerle bir değer dizisinin bırden daha fazla degerlerını karşılaştırılmasını sağlar.

<img width="640" height="658" alt="image" src="https://github.com/user-attachments/assets/b919c1ae-1782-44cc-9912-1c53aefe7bf0" />

```sql
SELECT first_name, last_name
FROM author
WHERE id =
(
  SELECT id
  FROM book
   WHERE title = 'Abe Lincoln in Illinois' OR title = 'Saving Shiloh'
);
```
> = ANY ile 4 veya 5 e esit olanlari vermis olur herhangi bir kosul dogru olunca verir.!


## ANY Operatörü

Alt sorgudan gelen herhangi bir değer koşulu sağlaması durumunda TRUE olarak ilgili değerin koşu sağlamasını sağlar. **bookstore** veritabanında yapmış olduğumuz aşağıdaki sorguyu inceleyelim.

```sql
SELECT first_name, last_name FROM author
WHERE id = ANY
(
  SELECT id
  FROM book
  WHERE title = 'Abe Lincoln in Illinois' OR title = 'Saving Shiloh'
);
```

Yukarıda görmüş olduğunuz gibi alt sorgudan gelebilecek potansiye iki id değeri var, bu id değerinin her ikisi de birbirinden bağımsız olarak ana sorgudaki id sütununda bulunan değerler ile eşleştiği için sorgu sonucunda oluşan sana tabloda id değeri 4 ve 5 olan yazarlara ait first_name ve last_name değerlerini göreceğiz.

## ALL Operatörü

Alt sorgudan gelen tüm değerlerin koşulu sağlaması durumunda TRUE olarak döner.

bookstore veritabanındaki yine aynı sorguyu inceleyelim.

```sql
SELECT first_name, last_name FROM author
WHERE id = ALL
(
  SELECT id
  FROM book
  WHERE title = 'Abe Lincoln in Illinois' OR title = 'Saving Shiloh'
);
```

Burada ne söylemiştik alt sorgu tarafından 4 ve 5 id leri gelecek burada eştlik olduğu için aynı anda 4 ve 5 in bu şulu sağlaması olanaksız olduğu için herhangi bir değer dönülmeyecektir.

--- 

- ANY (veya SOME):
“Bu listedeki herhangi bir değerle şart sağlanıyorsa TRUE.”
- ALL:
“Bu listedeki tüm değerlerle şart sağlanıyorsa TRUE.”

## ANY
 Elimizde şu liste olsun:
`(10, 20, 30)`

a) > ANY (10, 20, 30)
Bu şu demek:
“10’dan veya 20’den veya 30’dan büyükse TRUE”

Yani:
- 15 > ANY(10,20,30) → TRUE (çünkü 15 > 10)
- 25 > ANY(10,20,30) → TRUE (çünkü 25 > 10 ve 20)
- 5 > ANY(10,20,30) → FALSE (hiçbirinden büyük değil)
Kısaca:
> ANY (10,20,30) ≈ > MIN(10,20,30) → > 10

## ALL
b) > ALL (10, 20, 30)
Bu şu demek:
“10’dan da büyük, 20’den de büyük, 30’dan da büyük olmalı.”

Yani:
- 15 > ALL(10,20,30) → FALSE (15 > 10 ama 20 ve 30’dan büyük değil)
- 35 > ALL(10,20,30) → TRUE (hepsinden büyük)
- 25 > ALL(10,20,30) → FALSE (25 > 10 ve 20 ama 30’dan büyük değil)
Kısaca:
> ALL (10,20,30) ≈ > MAX(10,20,30) → > 30

Diyelim ki book tablosunda şu kategorideki kitapların sayfa sayıları var:
```sql
SELECT page_number
FROM book
WHERE category = 'Novel';
```
Bu alt sorgu şu değerleri döndürsün:
`(200, 350, 500)`

**a) > ANY ile:**
```sql
SELECT title, page_number
FROM book
WHERE page_number > ANY (
    SELECT page_number
    FROM book
    WHERE category = 'Novel'
);
```
Bu şu anlama gelir:
> “Sayfa sayısı, Novel kategorisindeki herhangi bir kitaptan fazla olsun.”

Yani page_number > 200 olması yeterli (çünkü 200 en küçük).



**b) > ALL ile:**
```sql
SELECT title, page_number
FROM book
WHERE page_number > ALL (
    SELECT page_number
    FROM book
    WHERE category = 'Novel'
);
```
“Sayfa sayısı, Novel kategorisindeki tüm kitaplardan fazla olsun.”

Yani page_number > 500 olması gerekir (çünkü 500 en büyük).






























 
## REFERENCES

1. [W3Schools ANY ALL](https://www.w3schools.com/sql/sql_any_all.asp)

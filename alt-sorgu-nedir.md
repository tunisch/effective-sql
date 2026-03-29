# Alt Sorgular (Subqueries)

Bir sorgu içerisinde, o sorgunun ihtiyaç duyduğu veri veya verileri getiren sorgulardır.

## Alt Sorgu Kullanımı

**bookstore** veritabanında "Gülün Adı" isimli kitabımızın sayfa sayısı 466 dır. Bu kitaptan daha fazla sayıda sayfası bulunan kitapları aşağıdaki sorgu yardımıyla sıralayabiliriz.

```sql
SELECT *
FROM book
WHERE page_number > 466;
```

Ancak yukarıdaki sorgumuzda şöyle bir sorun var. 466 ifade statik bir ifade ve biz bu değeri bilmiyor olabiliriz. Bu nedenle buradaki 466 rakamını aşağıdaki sorgu yardımıyla bulabiliriz.

```sql
SELECT page_number
FROM book
WHERE title = 'Gülün Adı'
```

İşte bu ikinci sorgumuz ilk sorgumuzda bir alt sorgu görevi görebilir. Her iki sorguyu da birleştirelim.

```sql
SELECT *
FROM book
WHERE page_number >
(
SELECT page_number
FROM book
WHERE title = 'Gülün Adı'
);
```

Yukardaki sorduga once subquery yani -> select page_number from book where title = gulun adi calisir sonra bir ustteki query nin where page_number > satiri calisir ve en son select * from book calisir.

> assagidaki soroguda 2 tane subquery vardir
<img width="593" height="720" alt="Ekran görüntüsü 2026-03-26 192453" src="https://github.com/user-attachments/assets/3eb971b8-a37f-48bf-95b8-c4c4c236300b" />

> title,page_number ve max page_number ayni sekilde yazdirmak istersek;

```sql
select title,  page_number, (select MAX(page_number) FROM book)
FROM book
WHERE page_number >
(
  SELECT page_number FROM book
  WHERE title = 'Gulun Adi'
);
```
> bu bir subquery 
`(select MAX(page_number) FROM book) `

> bu da baska bir subquery'dir.
```
(
  SELECT page_number FROM book        
  WHERE title = 'Gulun Adi'
);
```

> 3 tane subquery ile yazmak istersek;

<img width="1114" height="722" alt="Ekran görüntüsü 2026-03-26 192529" src="https://github.com/user-attachments/assets/7b22fb62-5968-46da-9b95-d9a4c97bbd59" />

```sql
select title,  page_number, (select MAX(page_number) FROM book), ((SELECT MAX(page_number) FROM book) - page_number) AS differ
FROM book
WHERE page_number >
(
  SELECT page_number FROM book
  WHERE title = 'Gulun Adi'
);
```

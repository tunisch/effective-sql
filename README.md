# SQL JOIN’ler – Temel Rehber
Bu doküman, SQL’de kullanılan JOIN türlerini sıfırdan, sade ve anlaşılır bir şekilde açıklar. Her JOIN türü örneklerle ve karşılaştırmalarla anlatılmıştır.

📌 1. JOIN Nedir?
JOIN, iki veya daha fazla tabloyu ortak bir sütun üzerinden birleştirmek için kullanılır.
SQL’de JOIN yazıldığında varsayılan olarak:

```sql
JOIN = INNER JOIN
```
yani sadece eşleşen kayıtlar getirilir.

📌 2. INNER JOIN
Sadece iki tabloda da eşleşen kayıtları getirir.

```sql
SELECT *
FROM book
INNER JOIN author ON book.author_id = author.author_id;
```
Mantık:
- book.author_id = author.author_id eşleşiyorsa → gelir
- Eşleşmiyorsa → gelmez
Bu JOIN türü en çok kullanılan JOIN türlerinden biridir.

📌 3. JOIN (Normal JOIN)
JOIN tek başına yazıldığında:
```sql
SELECT *
FROM book
JOIN author ON book.author_id = author.author_id;
```

📌 4. LEFT JOIN (LEFT OUTER JOIN)
Sol tablodaki tüm kayıtları getirir.
Sağ tabloda eşleşme yoksa → sağ taraf NULL olur.

```sql
SELECT *
FROM book
LEFT JOIN author ON book.author_id = author.author_id;
```

📌 5. RIGHT JOIN (RIGHT OUTER JOIN)
Sağ tablodaki tüm kayıtları getirir.
Sol tabloda eşleşme yoksa → sol taraf NULL olur.
```sql
SELECT *
FROM book
RIGHT JOIN author ON book.author_id = author.author_id;
```

📌 6. FULL JOIN (FULL OUTER JOIN)
Her iki tablodaki tüm kayıtları getirir.
- Eşleşenler → birleşmiş gelir
- Eşleşmeyenler → NULL’larla gelir
```sql
SELECT *
FROM book
FULL JOIN author ON book.author_id = author.author_id;
```

📌 7. CROSS JOIN
Bu JOIN tüm satırları çarpar.
JOIN koşulu yoktur.
```sql
SELECT *
FROM book
CROSS JOIN author;
```
Mantık:
- book tablosu 10 satır
- author tablosu 5 satır
Sonuç: 10 × 5 = 50 satır
Bu nedenle dikkatli kullanılmalıdır.

📌 8. Virgülle JOIN Kullanımı (Eski Yöntem)
Şu sorgu:



📌 9. Özet
- JOIN → INNER JOIN
- INNER JOIN → sadece eşleşenler
- LEFT JOIN → solun hepsi
- RIGHT JOIN → sağın hepsi
- FULL JOIN → her şey
- CROSS JOIN → çarpım
- table1, table2 → CROSS JOIN (kullanma)


